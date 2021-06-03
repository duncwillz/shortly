import 'package:flutter/foundation.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'db_config.g.dart';

@UseMoor(tables: [], daos: [])
class LocalDatabaseConfig extends _$LocalDatabaseConfig {
  LocalDatabaseConfig()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'shortly.db',
          logStatements: !kReleaseMode,
        )));

  @override
  int get schemaVersion => 0;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onCreate: (Migrator m) => m.createAll());
}
