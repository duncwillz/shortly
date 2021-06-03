// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_config.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class HistoryData extends DataClass implements Insertable<HistoryData> {
  final String shortLink;
  final String originalLink;
  HistoryData({@required this.shortLink, @required this.originalLink});
  factory HistoryData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return HistoryData(
      shortLink: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}short_link']),
      originalLink: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}original_link']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || shortLink != null) {
      map['short_link'] = Variable<String>(shortLink);
    }
    if (!nullToAbsent || originalLink != null) {
      map['original_link'] = Variable<String>(originalLink);
    }
    return map;
  }

  HistoryCompanion toCompanion(bool nullToAbsent) {
    return HistoryCompanion(
      shortLink: shortLink == null && nullToAbsent
          ? const Value.absent()
          : Value(shortLink),
      originalLink: originalLink == null && nullToAbsent
          ? const Value.absent()
          : Value(originalLink),
    );
  }

  factory HistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HistoryData(
      shortLink: serializer.fromJson<String>(json['shortLink']),
      originalLink: serializer.fromJson<String>(json['originalLink']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'shortLink': serializer.toJson<String>(shortLink),
      'originalLink': serializer.toJson<String>(originalLink),
    };
  }

  HistoryData copyWith({String shortLink, String originalLink}) => HistoryData(
        shortLink: shortLink ?? this.shortLink,
        originalLink: originalLink ?? this.originalLink,
      );
  @override
  String toString() {
    return (StringBuffer('HistoryData(')
          ..write('shortLink: $shortLink, ')
          ..write('originalLink: $originalLink')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(shortLink.hashCode, originalLink.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HistoryData &&
          other.shortLink == this.shortLink &&
          other.originalLink == this.originalLink);
}

class HistoryCompanion extends UpdateCompanion<HistoryData> {
  final Value<String> shortLink;
  final Value<String> originalLink;
  const HistoryCompanion({
    this.shortLink = const Value.absent(),
    this.originalLink = const Value.absent(),
  });
  HistoryCompanion.insert({
    @required String shortLink,
    @required String originalLink,
  })  : shortLink = Value(shortLink),
        originalLink = Value(originalLink);
  static Insertable<HistoryData> custom({
    Expression<String> shortLink,
    Expression<String> originalLink,
  }) {
    return RawValuesInsertable({
      if (shortLink != null) 'short_link': shortLink,
      if (originalLink != null) 'original_link': originalLink,
    });
  }

  HistoryCompanion copyWith(
      {Value<String> shortLink, Value<String> originalLink}) {
    return HistoryCompanion(
      shortLink: shortLink ?? this.shortLink,
      originalLink: originalLink ?? this.originalLink,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (shortLink.present) {
      map['short_link'] = Variable<String>(shortLink.value);
    }
    if (originalLink.present) {
      map['original_link'] = Variable<String>(originalLink.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryCompanion(')
          ..write('shortLink: $shortLink, ')
          ..write('originalLink: $originalLink')
          ..write(')'))
        .toString();
  }
}

class $HistoryTable extends History with TableInfo<$HistoryTable, HistoryData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HistoryTable(this._db, [this._alias]);
  final VerificationMeta _shortLinkMeta = const VerificationMeta('shortLink');
  GeneratedTextColumn _shortLink;
  @override
  GeneratedTextColumn get shortLink => _shortLink ??= _constructShortLink();
  GeneratedTextColumn _constructShortLink() {
    return GeneratedTextColumn(
      'short_link',
      $tableName,
      false,
    );
  }

  final VerificationMeta _originalLinkMeta =
      const VerificationMeta('originalLink');
  GeneratedTextColumn _originalLink;
  @override
  GeneratedTextColumn get originalLink =>
      _originalLink ??= _constructOriginalLink();
  GeneratedTextColumn _constructOriginalLink() {
    return GeneratedTextColumn(
      'original_link',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [shortLink, originalLink];
  @override
  $HistoryTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'history';
  @override
  final String actualTableName = 'history';
  @override
  VerificationContext validateIntegrity(Insertable<HistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('short_link')) {
      context.handle(_shortLinkMeta,
          shortLink.isAcceptableOrUnknown(data['short_link'], _shortLinkMeta));
    } else if (isInserting) {
      context.missing(_shortLinkMeta);
    }
    if (data.containsKey('original_link')) {
      context.handle(
          _originalLinkMeta,
          originalLink.isAcceptableOrUnknown(
              data['original_link'], _originalLinkMeta));
    } else if (isInserting) {
      context.missing(_originalLinkMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {shortLink};
  @override
  HistoryData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HistoryData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HistoryTable createAlias(String alias) {
    return $HistoryTable(_db, alias);
  }
}

abstract class _$LocalDatabaseConfig extends GeneratedDatabase {
  _$LocalDatabaseConfig(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  $HistoryTable _history;
  $HistoryTable get history => _history ??= $HistoryTable(this);
  HistoryDao _historyDao;
  HistoryDao get historyDao =>
      _historyDao ??= HistoryDao(this as LocalDatabaseConfig);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [history];
}
