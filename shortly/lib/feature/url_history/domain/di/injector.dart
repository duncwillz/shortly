import 'package:shortly/core/di/di_config.dart';
import 'package:shortly/feature/url_history/data/datasources/history_local_datasource.dart';
import 'package:shortly/feature/url_history/data/repositories/history_repository_impl.dart';
import 'package:shortly/feature/url_history/domain/db/history_dao.dart';
import 'package:shortly/feature/url_history/domain/repositories/history_repository.dart';
import 'package:shortly/feature/url_history/domain/usecases/delete_history.dart';
import 'package:shortly/feature/url_history/domain/usecases/get_history.dart';

Future<void> historyInjector() async {
  inject.registerLazySingleton<HistoryLocalDataSource>(
      () => HistoryLocalDataSourceImpl(inject()));
  inject.registerLazySingleton<HistoryDao>(() => HistoryDao(inject()));
  inject.registerLazySingleton<HistoryRepository>(
      () => HistoryRepositoryImpl(inject()));

  inject.registerLazySingleton<GetHistory>(() => GetHistory(inject()));
  inject.registerLazySingleton<DeleteHistory>(() => DeleteHistory(inject()));
}
