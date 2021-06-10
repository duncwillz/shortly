import 'package:moor_flutter/moor_flutter.dart';
import 'package:shortly/core/data/database/db_config.dart';

import 'history_table.dart';
part 'history_dao.g.dart';

/// Data Access Object for history-related data access.
/// Not to be used directly. It's used internally by the
/// [HistoryLocalDataSource] layer
@UseDao(tables: [
  History,
])
class HistoryDao extends DatabaseAccessor<LocalDatabaseConfig>
    with _$HistoryDaoMixin {
  final LocalDatabaseConfig databaseConfig;

  HistoryDao(this.databaseConfig) : super(databaseConfig);

  Future<void> saveHistory(HistoryData _history) async {
    await deleteHistory(_history.shortLink);
    return into(history).insert(_history, mode: InsertMode.insertOrReplace);
  }

  Future<void> deleteHistory(String historyId) =>
      (delete(history)..where((t) => t.shortLink.equals(historyId))).go();

  Future<List<HistoryData>> getAllHistory() => select(history).get();
}
