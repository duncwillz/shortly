import 'package:dio/dio.dart';
import 'package:shortly/core/platform/env_config.dart';
import 'package:shortly/core/utils/logger.dart';

import 'network_config.dart';
import 'network_exceptions.dart';
import 'network_interceptor.dart';
import 'network_service.dart';
import 'network_service_response.dart';

/// Basic HTTP request service wrapper around the common
/// HTTP Methods: GET, POST, PUT, PATCH, DELETE
class NetworkServiceImpl implements NetworkService {
  static var networkSetupOptions = BaseOptions(
    //Include request timeout of 60secs to through exception
    connectTimeout: 60000,
    baseUrl: FlavorConfig.instance.values.baseUrl,
  );

  NetworkConfig _networkConfiguration;
  final Dio _dio = Dio(networkSetupOptions);

  ///  Instantiate [NetworkServiceImpl] without [BaseNetworkInterceptor]s
  ///
  ///  '''
  ///   You can instantiate the [NetworkServiceImpl] using its named
  ///   constructor withInterceptors eg.
  ///      List<NetworkInterceptor>  interceptors;
  ///      NetworkServices.withInterceptors(interceptors);
  ///
  ///  '''
  ///  Instantiate [NetworkServiceImpl] with [BaseNetworkInterceptor]s
  NetworkServiceImpl({
    NetworkConfig networkConfiguration,
    BaseNetworkInterceptor interceptor,
  }) {
    try {
      _networkConfiguration = networkConfiguration;
      registerInterceptor(interceptor);
    } catch (e) {
      logger.e("Error while registering interceptors");
    }
  }

  /// Add an interceptor to the internal network request handler
  registerInterceptor(BaseNetworkInterceptor interceptor) {
    if (interceptor == null) {
      throw Exception(
        "Interceptor cannot be null",
      );
    }
    if (_dio.interceptors.contains(interceptor)) return;
    _dio.interceptors.add(interceptor);
  }

  /// Add list of interceptors to the internal network request handler
  registerInterceptors(List<BaseNetworkInterceptor> interceptors) {
    if (interceptors == null) {
      throw Exception(
        "Interceptors cannot be null",
      );
    }

    for (final interceptor in interceptors) {
      if (!_dio.interceptors.contains(interceptor)) {
        _dio.interceptors.add(interceptor);
      }
    }
  }

  @override
  Future<NetworkServiceResponse> get(String url,
      {Map<String, dynamic> queryParameters}) async {
    Response response;
    try {
      response = await _dio.get(
        url,
        options: Options(headers: _networkConfiguration.headers),
        queryParameters: queryParameters,
      );

      return NetworkServiceResponse(
          result: NetworkResult.SUCCESS, data: response.data);
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> post(String url,
      {Map<String, dynamic> body, Map<String, dynamic> queryParameters}) async {
    Response response;
    try {
      response = await _dio.post(
        url,
        options: Options(headers: _networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> delete(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.delete(
        url,
        options: Options(headers: _networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );
      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> patch(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.patch(
        url,
        options: Options(headers: _networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e);
      return handleException(e, trace);
    }
  }

  @override
  Future<NetworkServiceResponse> put(
    String url, {
    Map<String, dynamic> body,
    Map<String, dynamic> queryParameters,
  }) async {
    Response response;
    try {
      response = await _dio.put(
        url,
        options: Options(headers: this._networkConfiguration.headers),
        queryParameters: queryParameters,
        data: body,
      );

      return NetworkServiceResponse(
        result: NetworkResult.SUCCESS,
        data: response.data,
      );
    } on DioError catch (e, trace) {
      logger.e(e.message);
      return handleException(e, trace);
    }
  }
}
