import 'dart:async';
import 'dart:math';

import 'package:shortly/core/data/datasources/local_datasource_base.dart';
import 'package:shortly/core/data/network/network_service.dart';
import 'package:shortly/core/data/network/network_service_response.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';

import 'endpoints.dart';

abstract class ShortenerRemoteDataSource extends LocalDataSource {
  Future<UrlResultModel> postUrl(String url);
}

class ShortenerRemoteDataSourceImpl implements ShortenerRemoteDataSource {
  final NetworkService _networkService;

  ShortenerRemoteDataSourceImpl(this._networkService);

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}

  @override
  Future<UrlResultModel> postUrl(String url) async {
    final NetworkServiceResponse networkResponse = await _networkService
        .get(ShortenerEndpoints.shorten, queryParameters: {"url": url});
    final urlResponse = handleNetworkResponse(networkResponse);
    return UrlResponseModel.fromJson(urlResponse as Map<dynamic, dynamic>)
        .result;
  }
}
