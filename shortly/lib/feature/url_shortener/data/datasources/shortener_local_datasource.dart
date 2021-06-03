import 'dart:async';
import 'dart:convert';

import 'package:shortly/core/data/database/database_exceptions.dart';
import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/core/data/datasources/local_datasource_base.dart';
import 'package:shortly/core/utils/logger.dart';
import 'package:shortly/feature/url_history/domain/db/history_dao.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';

abstract class ShortenerLocalDataSource extends LocalDataSource {
  Future saveHistory(UrlResultModel result);
}

class ShortenerLocalDataSourceImpl implements ShortenerLocalDataSource {
  final HistoryDao _historyDao;
  ShortenerLocalDataSourceImpl(this._historyDao);

  @override
  void dispose() {}

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  Future saveHistory(UrlResultModel result) {
    try {
      return _historyDao.saveHistory(toHistoryModel(result));
    } catch (e) {
      logger.e(e);
      throw DatabaseResponseException(exceptionMessage: e.toString());
    }
  }

  HistoryData toHistoryModel(result) => HistoryData(
      originalLink: result.originalLink as String,
      shortLink: result.shortLink as String);
}
