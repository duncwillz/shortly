import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shortly/core/utils/logger.dart';

import 'network_config.dart';
import 'network_logging.dart';

/// Can be registered with [NetworkService]
class BaseNetworkInterceptor extends InterceptorsWrapper {
  NetworkConfig networkConfigInterface;

  /// NOTE: [networkConfigInterface] will be overwritten
  /// on each request. This is by design for now.
  BaseNetworkInterceptor({this.networkConfigInterface});

  /// On request interception goes here
  /// Get token from storage
  @override
  Future onRequest(RequestOptions options) async {
    String deviceRegistrationToken;
    // ignore: unused_local_variable
    String authToken = "some_x_token_for_auth";

    final headers = {
      "x-device-token": "",
    };

    networkConfigInterface = NetworkConfigImpl(headers: headers);

    options.headers.addAll(networkConfigInterface.headers);
    // Log request to servers
    logger.i(logRequest(options));
    return super.onRequest(options);
  }

  /// When error occurs, this interceptor handles it
  @override
  Future onError(DioError err) => super.onError(err);

  /// When it returns a response this interceptor handles it
  @override
  Future onResponse(Response response) {
    //Log all response from server
    //Essentially for dev purpose
    logger.i(logResponse(response));
    return super.onResponse(response);
  }
}
