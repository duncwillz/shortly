import 'package:shortly/core/di/di_config.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_local_datasource.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_remote_datasource.dart';
import 'package:shortly/feature/url_shortener/data/repositories/shortener_repository_impl.dart';
import 'package:shortly/feature/url_shortener/domain/repositories/shortener_repository.dart';
import 'package:shortly/feature/url_shortener/domain/usecases/post_url.dart';

Future<void> shortenerInjector() async {
  inject.registerLazySingleton<ShortenerRemoteDataSource>(
      () => ShortenerRemoteDataSourceImpl(inject()));
  inject.registerLazySingleton<ShortenerLocalDataSource>(
      () => ShortenerLocalDataSourceImpl(inject()));
  inject.registerLazySingleton<ShortenerRepository>(
      () => ShortenerRepositoryImpl(inject(), inject()));

  inject.registerLazySingleton<PostUrl>(() => PostUrl(inject()));
}
