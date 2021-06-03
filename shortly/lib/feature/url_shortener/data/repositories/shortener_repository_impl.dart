import 'package:shortly/core/utils/data/datasource_call_wrapper.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_local_datasource.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_remote_datasource.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';
import 'package:shortly/feature/url_shortener/domain/repositories/shortener_repository.dart';

class ShortenerRepositoryImpl implements ShortenerRepository {
  final ShortenerRemoteDataSource _remoteDatasource;
  final ShortenerLocalDataSource _localDatasource;
  ShortenerRepositoryImpl(this._remoteDatasource, this._localDatasource);

  @override
  Future<UrlResultModel> postUrl({String url}) async {
    final res = await remoteDataSourceResponseWrapper<UrlResultModel>(
        () => _remoteDatasource.postUrl(url),
        source: "postUrl");
    if (res != null) {
      await localDataSourceResponseWrapper(
          () => _localDatasource.saveHistory(res),
          source: "postUrl");
      return res;
    }
    return null;
  }
}
