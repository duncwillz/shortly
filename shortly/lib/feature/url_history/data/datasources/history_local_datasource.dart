import 'dart:async';

import 'package:shortly/core/data/database/database_exceptions.dart';
import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/core/data/datasources/local_datasource_base.dart';
import 'package:shortly/core/utils/logger.dart';
import 'package:shortly/feature/url_history/domain/db/history_dao.dart';

abstract class HistoryLocalDataSource extends LocalDataSource {
  Future<void> delete(String historyId);
  Future<List<HistoryData>> getHistory();
}

class HistoryLocalDataSourceImpl implements HistoryLocalDataSource {
  HistoryDao historyDao;
  HistoryLocalDataSourceImpl(this.historyDao);

  @override
  void dispose() {}

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  Future delete(String historyId) async {
    try {
      return await historyDao.deleteHistory(historyId);
    } catch (e) {
      logger.e(e);
      throw DatabaseResponseException(exceptionMessage: e.toString());
    }
  }

  @override
  Future<List<HistoryData>> getHistory() async {
    try {
      return historyDao.getAllHistory();
    } catch (e) {
      logger.e(e);
      throw DatabaseResponseException(exceptionMessage: e.toString());
    }
  }
}
