import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:mtds/index.dart' show SchemaManager, MtdsColumns;

import 'database.steps.dart';

part 'database.g.dart';

/// Sample Users table with MTDS required fields
class Users extends Table with MtdsColumns {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  IntColumn get age => integer().nullable()();
}

/// Sample Products table with MTDS required fields
class Products extends Table with MtdsColumns {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get price => real()();
  TextColumn get description => text().nullable()();
}

@DriftDatabase(tables: [Users, Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 10; // Updated for new MTDS column names (mtdsClientTs, mtdsDeleteTs)

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      print('📋 Creating database schema with Drift migrator...');
      await m.createAll();
      await SchemaManager.ensureStateTable(m.database);
      await SchemaManager.ensureChangeLogTable(m.database);
      print('✅ Tables created via Drift');
    },
    onUpgrade: (Migrator m, int from, int to) async {
      print('🔄 Auto-migrating database schema from $from to $to...');
      await _runLegacyMigrations(m, from);

      // Handle migration from 9 to 10 (column rename)
      if (from == 9 && to == 10) {
        await _migrateFrom9To10(m);
      } else if (from >= 8 && from < 9) {
        await _stepByStepUpgrade(m, from, to);
      }
      print('✅ Database upgrade complete');
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
      if (details.wasCreated || details.hadUpgrade) {
        await SchemaManager.ensureStateTable(this);
        await SchemaManager.ensureChangeLogTable(this);
        await _logUsersSchema(details.wasCreated ? 'creation' : 'upgrade');
      }
    },
  );

  Future<void> _logUsersSchema(String reason) async {
    final schema = await customSelect('PRAGMA table_info(users)').get();
    print('📋 Users table schema after $reason:');
    for (final row in schema) {
      print('   Column: ${row.data['name']} (${row.data['type']})');
    }
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'client_test_db.sqlite'));
      print('📁 MTDS example database: ${file.path}');
      return NativeDatabase(file, logStatements: true);
    });
  }

  Future<void> _runLegacyMigrations(Migrator m, int from) async {
    if (from < 2) {
      await m.addColumn(users, users.mtdsClientTs);
      await m.addColumn(users, users.mtdsDeviceId);
      await m.addColumn(users, users.mtdsDeleteTs);
      await m.addColumn(products, products.mtdsClientTs);
      await m.addColumn(products, products.mtdsDeviceId);
      await m.addColumn(products, products.mtdsDeleteTs);
    }
    if (from < 3) {
      await SchemaManager.ensureStateTable(m.database);
      await SchemaManager.ensureChangeLogTable(m.database);
    }
  }

  OnUpgrade get _stepByStepUpgrade => stepByStep(
    from8To9: (m, schema) async {
      await SchemaManager.ensureStateTable(m.database);
      await SchemaManager.ensureChangeLogTable(m.database);
    },
  );

  /// Migrate from version 9 to 10: Rename columns to new MTDS naming convention
  Future<void> _migrateFrom9To10(Migrator m) async {
    print('🔄 Migrating from version 9 to 10: Renaming MTDS columns...');

    // SQLite doesn't support ALTER TABLE RENAME COLUMN directly in older versions
    // We need to recreate the tables with new column names
    // For users table
    await m.database.customStatement('''
      CREATE TABLE IF NOT EXISTS users_new (
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        age INTEGER,
        mtds_client_ts INTEGER NOT NULL DEFAULT 0,
        mtds_server_ts INTEGER,
        mtds_device_id INTEGER NOT NULL DEFAULT 0,
        mtds_delete_ts INTEGER
      );
    ''');

    // Copy data from old table to new table
    // Check if old columns exist before copying
    final usersColumns =
        await m.database.customSelect("PRAGMA table_info(users)").get();
    final hasOldColumns = usersColumns.any(
      (row) =>
          row.data['name'] == 'mtds_last_updated_txid' ||
          row.data['name'] == 'mtds_deleted_txid',
    );

    if (hasOldColumns) {
      await m.database.customStatement('''
        INSERT INTO users_new (id, name, email, age, mtds_client_ts, mtds_server_ts, mtds_device_id, mtds_delete_ts)
        SELECT 
          id, 
          name, 
          email, 
          age,
          COALESCE(mtds_last_updated_txid, 0) as mtds_client_ts,
          NULL as mtds_server_ts,
          COALESCE(mtds_device_id, 0) as mtds_device_id,
          mtds_deleted_txid as mtds_delete_ts
        FROM users;
      ''');
    } else {
      // Old columns don't exist, just copy basic data
      await m.database.customStatement('''
        INSERT INTO users_new (id, name, email, age, mtds_client_ts, mtds_device_id)
        SELECT 
          id, 
          name, 
          email, 
          age,
          0 as mtds_client_ts,
          0 as mtds_device_id
        FROM users;
      ''');
    }

    // Drop old table and rename new table
    await m.database.customStatement('DROP TABLE users;');
    await m.database.customStatement('ALTER TABLE users_new RENAME TO users;');

    // For products table
    await m.database.customStatement('''
      CREATE TABLE IF NOT EXISTS products_new (
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT NOT NULL,
        price REAL NOT NULL,
        description TEXT,
        mtds_client_ts INTEGER NOT NULL DEFAULT 0,
        mtds_server_ts INTEGER,
        mtds_device_id INTEGER NOT NULL DEFAULT 0,
        mtds_delete_ts INTEGER
      );
    ''');

    // Copy data from old table to new table
    // Check if old columns exist before copying
    final productsColumns =
        await m.database.customSelect("PRAGMA table_info(products)").get();
    final hasOldProductsColumns = productsColumns.any(
      (row) =>
          row.data['name'] == 'mtds_last_updated_txid' ||
          row.data['name'] == 'mtds_deleted_txid',
    );

    if (hasOldProductsColumns) {
      await m.database.customStatement('''
        INSERT INTO products_new (id, name, price, description, mtds_client_ts, mtds_server_ts, mtds_device_id, mtds_delete_ts)
        SELECT 
          id, 
          name, 
          price, 
          description,
          COALESCE(mtds_last_updated_txid, 0) as mtds_client_ts,
          NULL as mtds_server_ts,
          COALESCE(mtds_device_id, 0) as mtds_device_id,
          mtds_deleted_txid as mtds_delete_ts
        FROM products;
      ''');
    } else {
      // Old columns don't exist, just copy basic data
      await m.database.customStatement('''
        INSERT INTO products_new (id, name, price, description, mtds_client_ts, mtds_device_id)
        SELECT 
          id, 
          name, 
          price, 
          description,
          0 as mtds_client_ts,
          0 as mtds_device_id
        FROM products;
      ''');
    }

    // Drop old table and rename new table
    await m.database.customStatement('DROP TABLE products;');
    await m.database.customStatement(
      'ALTER TABLE products_new RENAME TO products;',
    );

    // Ensure state table exists (it should, but just in case)
    await SchemaManager.ensureStateTable(m.database);

    print('✅ Migration from 9 to 10 complete');
  }

  // Helper method to query change log
  Future<List<Map<String, Object?>>> getChangeLogs() async {
    final result =
        await customSelect(
          'SELECT * FROM mtds_change_log ORDER BY txid DESC',
        ).get();
    return result.map((row) => row.data).toList();
  }

  // Helper method to clear change log
  Future<void> clearChangeLogs() async {
    await customStatement('DELETE FROM mtds_change_log');
  }
}
