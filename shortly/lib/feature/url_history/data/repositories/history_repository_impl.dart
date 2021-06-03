import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/core/utils/data/datasource_call_wrapper.dart';
import 'package:shortly/feature/url_history/data/datasources/history_local_datasource.dart';
import 'package:shortly/feature/url_history/domain/repositories/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryLocalDataSource _localDataSource;
  HistoryRepositoryImpl(this._localDataSource);

  @override
  Future<bool> deleteHistory(String historyId) {
    try {
      localDataSourceResponseWrapper<void>(
          () => _localDataSource.delete(historyId),
          source: "deleteHistory");
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<List<HistoryData>> getHistory() async =>
      await localDataSourceResponseWrapper<List<HistoryData>>(
          _localDataSource.getHistory,
          source: "getHistory");
}
