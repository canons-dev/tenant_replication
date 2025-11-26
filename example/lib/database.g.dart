// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mtdsClientTsMeta = const VerificationMeta(
    'mtdsClientTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsClientTs = GeneratedColumn<BigInt>(
    'mtds_client_ts',
    aliasedName,
    false,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
    defaultValue: Constant(BigInt.from(0)),
  );
  static const VerificationMeta _mtdsServerTsMeta = const VerificationMeta(
    'mtdsServerTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsServerTs = GeneratedColumn<BigInt>(
    'mtds_server_ts',
    aliasedName,
    true,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _mtdsDeviceIdMeta = const VerificationMeta(
    'mtdsDeviceId',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsDeviceId = GeneratedColumn<BigInt>(
    'mtds_device_id',
    aliasedName,
    false,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
    defaultValue: Constant(BigInt.from(0)),
  );
  static const VerificationMeta _mtdsDeleteTsMeta = const VerificationMeta(
    'mtdsDeleteTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsDeleteTs = GeneratedColumn<BigInt>(
    'mtds_delete_ts',
    aliasedName,
    true,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    mtdsClientTs,
    mtdsServerTs,
    mtdsDeviceId,
    mtdsDeleteTs,
    id,
    name,
    email,
    age,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mtds_client_ts')) {
      context.handle(
        _mtdsClientTsMeta,
        mtdsClientTs.isAcceptableOrUnknown(
          data['mtds_client_ts']!,
          _mtdsClientTsMeta,
        ),
      );
    }
    if (data.containsKey('mtds_server_ts')) {
      context.handle(
        _mtdsServerTsMeta,
        mtdsServerTs.isAcceptableOrUnknown(
          data['mtds_server_ts']!,
          _mtdsServerTsMeta,
        ),
      );
    }
    if (data.containsKey('mtds_device_id')) {
      context.handle(
        _mtdsDeviceIdMeta,
        mtdsDeviceId.isAcceptableOrUnknown(
          data['mtds_device_id']!,
          _mtdsDeviceIdMeta,
        ),
      );
    }
    if (data.containsKey('mtds_delete_ts')) {
      context.handle(
        _mtdsDeleteTsMeta,
        mtdsDeleteTs.isAcceptableOrUnknown(
          data['mtds_delete_ts']!,
          _mtdsDeleteTsMeta,
        ),
      );
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      mtdsClientTs:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bigInt,
            data['${effectivePrefix}mtds_client_ts'],
          )!,
      mtdsServerTs: attachedDatabase.typeMapping.read(
        DriftSqlType.bigInt,
        data['${effectivePrefix}mtds_server_ts'],
      ),
      mtdsDeviceId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bigInt,
            data['${effectivePrefix}mtds_device_id'],
          )!,
      mtdsDeleteTs: attachedDatabase.typeMapping.read(
        DriftSqlType.bigInt,
        data['${effectivePrefix}mtds_delete_ts'],
      ),
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      email:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}email'],
          )!,
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      ),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  /// Client-generated timestamp in milliseconds since client epoch.
  /// Always present with a default of 0 so change detection never hits NULL.
  final BigInt mtdsClientTs;

  /// Server-assigned authoritative timestamp in nanoseconds since epoch (NodeJS HR based).
  /// NULL until the record is synced to server.
  final BigInt? mtdsServerTs;

  /// 64-bit device identifier used for replication guardrails.
  /// Always present with a default of 0; SDK overwrites it on each write.
  final BigInt mtdsDeviceId;

  /// Soft-delete marker (NULL = active, non-null = deleted at timestamp in milliseconds since client epoch)
  final BigInt? mtdsDeleteTs;
  final int id;
  final String name;
  final String email;
  final int? age;
  const User({
    required this.mtdsClientTs,
    this.mtdsServerTs,
    required this.mtdsDeviceId,
    this.mtdsDeleteTs,
    required this.id,
    required this.name,
    required this.email,
    this.age,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mtds_client_ts'] = Variable<BigInt>(mtdsClientTs);
    if (!nullToAbsent || mtdsServerTs != null) {
      map['mtds_server_ts'] = Variable<BigInt>(mtdsServerTs);
    }
    map['mtds_device_id'] = Variable<BigInt>(mtdsDeviceId);
    if (!nullToAbsent || mtdsDeleteTs != null) {
      map['mtds_delete_ts'] = Variable<BigInt>(mtdsDeleteTs);
    }
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || age != null) {
      map['age'] = Variable<int>(age);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      mtdsClientTs: Value(mtdsClientTs),
      mtdsServerTs:
          mtdsServerTs == null && nullToAbsent
              ? const Value.absent()
              : Value(mtdsServerTs),
      mtdsDeviceId: Value(mtdsDeviceId),
      mtdsDeleteTs:
          mtdsDeleteTs == null && nullToAbsent
              ? const Value.absent()
              : Value(mtdsDeleteTs),
      id: Value(id),
      name: Value(name),
      email: Value(email),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      mtdsClientTs: serializer.fromJson<BigInt>(json['mtdsClientTs']),
      mtdsServerTs: serializer.fromJson<BigInt?>(json['mtdsServerTs']),
      mtdsDeviceId: serializer.fromJson<BigInt>(json['mtdsDeviceId']),
      mtdsDeleteTs: serializer.fromJson<BigInt?>(json['mtdsDeleteTs']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      age: serializer.fromJson<int?>(json['age']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mtdsClientTs': serializer.toJson<BigInt>(mtdsClientTs),
      'mtdsServerTs': serializer.toJson<BigInt?>(mtdsServerTs),
      'mtdsDeviceId': serializer.toJson<BigInt>(mtdsDeviceId),
      'mtdsDeleteTs': serializer.toJson<BigInt?>(mtdsDeleteTs),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'age': serializer.toJson<int?>(age),
    };
  }

  User copyWith({
    BigInt? mtdsClientTs,
    Value<BigInt?> mtdsServerTs = const Value.absent(),
    BigInt? mtdsDeviceId,
    Value<BigInt?> mtdsDeleteTs = const Value.absent(),
    int? id,
    String? name,
    String? email,
    Value<int?> age = const Value.absent(),
  }) => User(
    mtdsClientTs: mtdsClientTs ?? this.mtdsClientTs,
    mtdsServerTs: mtdsServerTs.present ? mtdsServerTs.value : this.mtdsServerTs,
    mtdsDeviceId: mtdsDeviceId ?? this.mtdsDeviceId,
    mtdsDeleteTs: mtdsDeleteTs.present ? mtdsDeleteTs.value : this.mtdsDeleteTs,
    id: id ?? this.id,
    name: name ?? this.name,
    email: email ?? this.email,
    age: age.present ? age.value : this.age,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      mtdsClientTs:
          data.mtdsClientTs.present
              ? data.mtdsClientTs.value
              : this.mtdsClientTs,
      mtdsServerTs:
          data.mtdsServerTs.present
              ? data.mtdsServerTs.value
              : this.mtdsServerTs,
      mtdsDeviceId:
          data.mtdsDeviceId.present
              ? data.mtdsDeviceId.value
              : this.mtdsDeviceId,
      mtdsDeleteTs:
          data.mtdsDeleteTs.present
              ? data.mtdsDeleteTs.value
              : this.mtdsDeleteTs,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
      age: data.age.present ? data.age.value : this.age,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('mtdsClientTs: $mtdsClientTs, ')
          ..write('mtdsServerTs: $mtdsServerTs, ')
          ..write('mtdsDeviceId: $mtdsDeviceId, ')
          ..write('mtdsDeleteTs: $mtdsDeleteTs, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    mtdsClientTs,
    mtdsServerTs,
    mtdsDeviceId,
    mtdsDeleteTs,
    id,
    name,
    email,
    age,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.mtdsClientTs == this.mtdsClientTs &&
          other.mtdsServerTs == this.mtdsServerTs &&
          other.mtdsDeviceId == this.mtdsDeviceId &&
          other.mtdsDeleteTs == this.mtdsDeleteTs &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.age == this.age);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<BigInt> mtdsClientTs;
  final Value<BigInt?> mtdsServerTs;
  final Value<BigInt> mtdsDeviceId;
  final Value<BigInt?> mtdsDeleteTs;
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<int?> age;
  const UsersCompanion({
    this.mtdsClientTs = const Value.absent(),
    this.mtdsServerTs = const Value.absent(),
    this.mtdsDeviceId = const Value.absent(),
    this.mtdsDeleteTs = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.age = const Value.absent(),
  });
  UsersCompanion.insert({
    this.mtdsClientTs = const Value.absent(),
    this.mtdsServerTs = const Value.absent(),
    this.mtdsDeviceId = const Value.absent(),
    this.mtdsDeleteTs = const Value.absent(),
    this.id = const Value.absent(),
    required String name,
    required String email,
    this.age = const Value.absent(),
  }) : name = Value(name),
       email = Value(email);
  static Insertable<User> custom({
    Expression<BigInt>? mtdsClientTs,
    Expression<BigInt>? mtdsServerTs,
    Expression<BigInt>? mtdsDeviceId,
    Expression<BigInt>? mtdsDeleteTs,
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<int>? age,
  }) {
    return RawValuesInsertable({
      if (mtdsClientTs != null) 'mtds_client_ts': mtdsClientTs,
      if (mtdsServerTs != null) 'mtds_server_ts': mtdsServerTs,
      if (mtdsDeviceId != null) 'mtds_device_id': mtdsDeviceId,
      if (mtdsDeleteTs != null) 'mtds_delete_ts': mtdsDeleteTs,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (age != null) 'age': age,
    });
  }

  UsersCompanion copyWith({
    Value<BigInt>? mtdsClientTs,
    Value<BigInt?>? mtdsServerTs,
    Value<BigInt>? mtdsDeviceId,
    Value<BigInt?>? mtdsDeleteTs,
    Value<int>? id,
    Value<String>? name,
    Value<String>? email,
    Value<int?>? age,
  }) {
    return UsersCompanion(
      mtdsClientTs: mtdsClientTs ?? this.mtdsClientTs,
      mtdsServerTs: mtdsServerTs ?? this.mtdsServerTs,
      mtdsDeviceId: mtdsDeviceId ?? this.mtdsDeviceId,
      mtdsDeleteTs: mtdsDeleteTs ?? this.mtdsDeleteTs,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      age: age ?? this.age,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mtdsClientTs.present) {
      map['mtds_client_ts'] = Variable<BigInt>(mtdsClientTs.value);
    }
    if (mtdsServerTs.present) {
      map['mtds_server_ts'] = Variable<BigInt>(mtdsServerTs.value);
    }
    if (mtdsDeviceId.present) {
      map['mtds_device_id'] = Variable<BigInt>(mtdsDeviceId.value);
    }
    if (mtdsDeleteTs.present) {
      map['mtds_delete_ts'] = Variable<BigInt>(mtdsDeleteTs.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('mtdsClientTs: $mtdsClientTs, ')
          ..write('mtdsServerTs: $mtdsServerTs, ')
          ..write('mtdsDeviceId: $mtdsDeviceId, ')
          ..write('mtdsDeleteTs: $mtdsDeleteTs, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mtdsClientTsMeta = const VerificationMeta(
    'mtdsClientTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsClientTs = GeneratedColumn<BigInt>(
    'mtds_client_ts',
    aliasedName,
    false,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
    defaultValue: Constant(BigInt.from(0)),
  );
  static const VerificationMeta _mtdsServerTsMeta = const VerificationMeta(
    'mtdsServerTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsServerTs = GeneratedColumn<BigInt>(
    'mtds_server_ts',
    aliasedName,
    true,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _mtdsDeviceIdMeta = const VerificationMeta(
    'mtdsDeviceId',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsDeviceId = GeneratedColumn<BigInt>(
    'mtds_device_id',
    aliasedName,
    false,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
    defaultValue: Constant(BigInt.from(0)),
  );
  static const VerificationMeta _mtdsDeleteTsMeta = const VerificationMeta(
    'mtdsDeleteTs',
  );
  @override
  late final GeneratedColumn<BigInt> mtdsDeleteTs = GeneratedColumn<BigInt>(
    'mtds_delete_ts',
    aliasedName,
    true,
    type: DriftSqlType.bigInt,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    mtdsClientTs,
    mtdsServerTs,
    mtdsDeviceId,
    mtdsDeleteTs,
    id,
    name,
    price,
    description,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mtds_client_ts')) {
      context.handle(
        _mtdsClientTsMeta,
        mtdsClientTs.isAcceptableOrUnknown(
          data['mtds_client_ts']!,
          _mtdsClientTsMeta,
        ),
      );
    }
    if (data.containsKey('mtds_server_ts')) {
      context.handle(
        _mtdsServerTsMeta,
        mtdsServerTs.isAcceptableOrUnknown(
          data['mtds_server_ts']!,
          _mtdsServerTsMeta,
        ),
      );
    }
    if (data.containsKey('mtds_device_id')) {
      context.handle(
        _mtdsDeviceIdMeta,
        mtdsDeviceId.isAcceptableOrUnknown(
          data['mtds_device_id']!,
          _mtdsDeviceIdMeta,
        ),
      );
    }
    if (data.containsKey('mtds_delete_ts')) {
      context.handle(
        _mtdsDeleteTsMeta,
        mtdsDeleteTs.isAcceptableOrUnknown(
          data['mtds_delete_ts']!,
          _mtdsDeleteTsMeta,
        ),
      );
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      mtdsClientTs:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bigInt,
            data['${effectivePrefix}mtds_client_ts'],
          )!,
      mtdsServerTs: attachedDatabase.typeMapping.read(
        DriftSqlType.bigInt,
        data['${effectivePrefix}mtds_server_ts'],
      ),
      mtdsDeviceId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bigInt,
            data['${effectivePrefix}mtds_device_id'],
          )!,
      mtdsDeleteTs: attachedDatabase.typeMapping.read(
        DriftSqlType.bigInt,
        data['${effectivePrefix}mtds_delete_ts'],
      ),
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      price:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}price'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  /// Client-generated timestamp in milliseconds since client epoch.
  /// Always present with a default of 0 so change detection never hits NULL.
  final BigInt mtdsClientTs;

  /// Server-assigned authoritative timestamp in nanoseconds since epoch (NodeJS HR based).
  /// NULL until the record is synced to server.
  final BigInt? mtdsServerTs;

  /// 64-bit device identifier used for replication guardrails.
  /// Always present with a default of 0; SDK overwrites it on each write.
  final BigInt mtdsDeviceId;

  /// Soft-delete marker (NULL = active, non-null = deleted at timestamp in milliseconds since client epoch)
  final BigInt? mtdsDeleteTs;
  final int id;
  final String name;
  final double price;
  final String? description;
  const Product({
    required this.mtdsClientTs,
    this.mtdsServerTs,
    required this.mtdsDeviceId,
    this.mtdsDeleteTs,
    required this.id,
    required this.name,
    required this.price,
    this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mtds_client_ts'] = Variable<BigInt>(mtdsClientTs);
    if (!nullToAbsent || mtdsServerTs != null) {
      map['mtds_server_ts'] = Variable<BigInt>(mtdsServerTs);
    }
    map['mtds_device_id'] = Variable<BigInt>(mtdsDeviceId);
    if (!nullToAbsent || mtdsDeleteTs != null) {
      map['mtds_delete_ts'] = Variable<BigInt>(mtdsDeleteTs);
    }
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      mtdsClientTs: Value(mtdsClientTs),
      mtdsServerTs:
          mtdsServerTs == null && nullToAbsent
              ? const Value.absent()
              : Value(mtdsServerTs),
      mtdsDeviceId: Value(mtdsDeviceId),
      mtdsDeleteTs:
          mtdsDeleteTs == null && nullToAbsent
              ? const Value.absent()
              : Value(mtdsDeleteTs),
      id: Value(id),
      name: Value(name),
      price: Value(price),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      mtdsClientTs: serializer.fromJson<BigInt>(json['mtdsClientTs']),
      mtdsServerTs: serializer.fromJson<BigInt?>(json['mtdsServerTs']),
      mtdsDeviceId: serializer.fromJson<BigInt>(json['mtdsDeviceId']),
      mtdsDeleteTs: serializer.fromJson<BigInt?>(json['mtdsDeleteTs']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mtdsClientTs': serializer.toJson<BigInt>(mtdsClientTs),
      'mtdsServerTs': serializer.toJson<BigInt?>(mtdsServerTs),
      'mtdsDeviceId': serializer.toJson<BigInt>(mtdsDeviceId),
      'mtdsDeleteTs': serializer.toJson<BigInt?>(mtdsDeleteTs),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'description': serializer.toJson<String?>(description),
    };
  }

  Product copyWith({
    BigInt? mtdsClientTs,
    Value<BigInt?> mtdsServerTs = const Value.absent(),
    BigInt? mtdsDeviceId,
    Value<BigInt?> mtdsDeleteTs = const Value.absent(),
    int? id,
    String? name,
    double? price,
    Value<String?> description = const Value.absent(),
  }) => Product(
    mtdsClientTs: mtdsClientTs ?? this.mtdsClientTs,
    mtdsServerTs: mtdsServerTs.present ? mtdsServerTs.value : this.mtdsServerTs,
    mtdsDeviceId: mtdsDeviceId ?? this.mtdsDeviceId,
    mtdsDeleteTs: mtdsDeleteTs.present ? mtdsDeleteTs.value : this.mtdsDeleteTs,
    id: id ?? this.id,
    name: name ?? this.name,
    price: price ?? this.price,
    description: description.present ? description.value : this.description,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      mtdsClientTs:
          data.mtdsClientTs.present
              ? data.mtdsClientTs.value
              : this.mtdsClientTs,
      mtdsServerTs:
          data.mtdsServerTs.present
              ? data.mtdsServerTs.value
              : this.mtdsServerTs,
      mtdsDeviceId:
          data.mtdsDeviceId.present
              ? data.mtdsDeviceId.value
              : this.mtdsDeviceId,
      mtdsDeleteTs:
          data.mtdsDeleteTs.present
              ? data.mtdsDeleteTs.value
              : this.mtdsDeleteTs,
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      price: data.price.present ? data.price.value : this.price,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('mtdsClientTs: $mtdsClientTs, ')
          ..write('mtdsServerTs: $mtdsServerTs, ')
          ..write('mtdsDeviceId: $mtdsDeviceId, ')
          ..write('mtdsDeleteTs: $mtdsDeleteTs, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    mtdsClientTs,
    mtdsServerTs,
    mtdsDeviceId,
    mtdsDeleteTs,
    id,
    name,
    price,
    description,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.mtdsClientTs == this.mtdsClientTs &&
          other.mtdsServerTs == this.mtdsServerTs &&
          other.mtdsDeviceId == this.mtdsDeviceId &&
          other.mtdsDeleteTs == this.mtdsDeleteTs &&
          other.id == this.id &&
          other.name == this.name &&
          other.price == this.price &&
          other.description == this.description);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<BigInt> mtdsClientTs;
  final Value<BigInt?> mtdsServerTs;
  final Value<BigInt> mtdsDeviceId;
  final Value<BigInt?> mtdsDeleteTs;
  final Value<int> id;
  final Value<String> name;
  final Value<double> price;
  final Value<String?> description;
  const ProductsCompanion({
    this.mtdsClientTs = const Value.absent(),
    this.mtdsServerTs = const Value.absent(),
    this.mtdsDeviceId = const Value.absent(),
    this.mtdsDeleteTs = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.description = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.mtdsClientTs = const Value.absent(),
    this.mtdsServerTs = const Value.absent(),
    this.mtdsDeviceId = const Value.absent(),
    this.mtdsDeleteTs = const Value.absent(),
    this.id = const Value.absent(),
    required String name,
    required double price,
    this.description = const Value.absent(),
  }) : name = Value(name),
       price = Value(price);
  static Insertable<Product> custom({
    Expression<BigInt>? mtdsClientTs,
    Expression<BigInt>? mtdsServerTs,
    Expression<BigInt>? mtdsDeviceId,
    Expression<BigInt>? mtdsDeleteTs,
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? price,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (mtdsClientTs != null) 'mtds_client_ts': mtdsClientTs,
      if (mtdsServerTs != null) 'mtds_server_ts': mtdsServerTs,
      if (mtdsDeviceId != null) 'mtds_device_id': mtdsDeviceId,
      if (mtdsDeleteTs != null) 'mtds_delete_ts': mtdsDeleteTs,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (description != null) 'description': description,
    });
  }

  ProductsCompanion copyWith({
    Value<BigInt>? mtdsClientTs,
    Value<BigInt?>? mtdsServerTs,
    Value<BigInt>? mtdsDeviceId,
    Value<BigInt?>? mtdsDeleteTs,
    Value<int>? id,
    Value<String>? name,
    Value<double>? price,
    Value<String?>? description,
  }) {
    return ProductsCompanion(
      mtdsClientTs: mtdsClientTs ?? this.mtdsClientTs,
      mtdsServerTs: mtdsServerTs ?? this.mtdsServerTs,
      mtdsDeviceId: mtdsDeviceId ?? this.mtdsDeviceId,
      mtdsDeleteTs: mtdsDeleteTs ?? this.mtdsDeleteTs,
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mtdsClientTs.present) {
      map['mtds_client_ts'] = Variable<BigInt>(mtdsClientTs.value);
    }
    if (mtdsServerTs.present) {
      map['mtds_server_ts'] = Variable<BigInt>(mtdsServerTs.value);
    }
    if (mtdsDeviceId.present) {
      map['mtds_device_id'] = Variable<BigInt>(mtdsDeviceId.value);
    }
    if (mtdsDeleteTs.present) {
      map['mtds_delete_ts'] = Variable<BigInt>(mtdsDeleteTs.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('mtdsClientTs: $mtdsClientTs, ')
          ..write('mtdsServerTs: $mtdsServerTs, ')
          ..write('mtdsDeviceId: $mtdsDeviceId, ')
          ..write('mtdsDeleteTs: $mtdsDeleteTs, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, products];
}

typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      Value<BigInt> mtdsClientTs,
      Value<BigInt?> mtdsServerTs,
      Value<BigInt> mtdsDeviceId,
      Value<BigInt?> mtdsDeleteTs,
      Value<int> id,
      required String name,
      required String email,
      Value<int?> age,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<BigInt> mtdsClientTs,
      Value<BigInt?> mtdsServerTs,
      Value<BigInt> mtdsDeviceId,
      Value<BigInt?> mtdsDeleteTs,
      Value<int> id,
      Value<String> name,
      Value<String> email,
      Value<int?> age,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<BigInt> mtdsClientTs = const Value.absent(),
                Value<BigInt?> mtdsServerTs = const Value.absent(),
                Value<BigInt> mtdsDeviceId = const Value.absent(),
                Value<BigInt?> mtdsDeleteTs = const Value.absent(),
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<int?> age = const Value.absent(),
              }) => UsersCompanion(
                mtdsClientTs: mtdsClientTs,
                mtdsServerTs: mtdsServerTs,
                mtdsDeviceId: mtdsDeviceId,
                mtdsDeleteTs: mtdsDeleteTs,
                id: id,
                name: name,
                email: email,
                age: age,
              ),
          createCompanionCallback:
              ({
                Value<BigInt> mtdsClientTs = const Value.absent(),
                Value<BigInt?> mtdsServerTs = const Value.absent(),
                Value<BigInt> mtdsDeviceId = const Value.absent(),
                Value<BigInt?> mtdsDeleteTs = const Value.absent(),
                Value<int> id = const Value.absent(),
                required String name,
                required String email,
                Value<int?> age = const Value.absent(),
              }) => UsersCompanion.insert(
                mtdsClientTs: mtdsClientTs,
                mtdsServerTs: mtdsServerTs,
                mtdsDeviceId: mtdsDeviceId,
                mtdsDeleteTs: mtdsDeleteTs,
                id: id,
                name: name,
                email: email,
                age: age,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;
typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      Value<BigInt> mtdsClientTs,
      Value<BigInt?> mtdsServerTs,
      Value<BigInt> mtdsDeviceId,
      Value<BigInt?> mtdsDeleteTs,
      Value<int> id,
      required String name,
      required double price,
      Value<String?> description,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<BigInt> mtdsClientTs,
      Value<BigInt?> mtdsServerTs,
      Value<BigInt> mtdsDeviceId,
      Value<BigInt?> mtdsDeleteTs,
      Value<int> id,
      Value<String> name,
      Value<double> price,
      Value<String?> description,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<BigInt> get mtdsClientTs => $composableBuilder(
    column: $table.mtdsClientTs,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsServerTs => $composableBuilder(
    column: $table.mtdsServerTs,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsDeviceId => $composableBuilder(
    column: $table.mtdsDeviceId,
    builder: (column) => column,
  );

  GeneratedColumn<BigInt> get mtdsDeleteTs => $composableBuilder(
    column: $table.mtdsDeleteTs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<BigInt> mtdsClientTs = const Value.absent(),
                Value<BigInt?> mtdsServerTs = const Value.absent(),
                Value<BigInt> mtdsDeviceId = const Value.absent(),
                Value<BigInt?> mtdsDeleteTs = const Value.absent(),
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => ProductsCompanion(
                mtdsClientTs: mtdsClientTs,
                mtdsServerTs: mtdsServerTs,
                mtdsDeviceId: mtdsDeviceId,
                mtdsDeleteTs: mtdsDeleteTs,
                id: id,
                name: name,
                price: price,
                description: description,
              ),
          createCompanionCallback:
              ({
                Value<BigInt> mtdsClientTs = const Value.absent(),
                Value<BigInt?> mtdsServerTs = const Value.absent(),
                Value<BigInt> mtdsDeviceId = const Value.absent(),
                Value<BigInt?> mtdsDeleteTs = const Value.absent(),
                Value<int> id = const Value.absent(),
                required String name,
                required double price,
                Value<String?> description = const Value.absent(),
              }) => ProductsCompanion.insert(
                mtdsClientTs: mtdsClientTs,
                mtdsServerTs: mtdsServerTs,
                mtdsDeviceId: mtdsDeviceId,
                mtdsDeleteTs: mtdsDeleteTs,
                id: id,
                name: name,
                price: price,
                description: description,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
      Product,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
}
