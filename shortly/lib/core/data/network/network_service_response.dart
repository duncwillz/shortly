import 'package:shortly/core/utils/logger.dart';

import 'network_exceptions.dart';

/// Wrapper for network responses.
class NetworkServiceResponse {
  /// HTTP result of network access. An enum.
  final NetworkResult result;

  /// Can be any of the typical REST API response bodies. If an error occurs,
  /// [data] is a [Map] with an `error` key.
  final dynamic data;

  /// May hold an error message if an error has occurred
  final dynamic error;

  /// Response headers if server responded with them
  final Map<String, dynamic> headers;

  NetworkServiceResponse({this.result, this.data, this.headers, this.error});
}

/// Provides a readable enumeration of
/// the various potential HTTP responses.
enum NetworkResult {
  FAILURE,
  SUCCESS,
  NO_INTERNET_CONNECTION,
  SERVER_ERROR,
  BAD_REQUEST,
  UNAUTHORISED,
  FORBIDDEN,
  NO_SUCH_ENDPOINT,
  METHOD_DISALLOWED,
  SERVER_TIMEOUT,
  TOO_MANY_REQUESTS,
  NOT_IMPLEMENTED
}

/// Intended for use in the remote datasource layer. Filter the type of error generated from the Network
/// layer. The repository layer should listen specifically for
/// `NetworkConnectivityException`s,and `NetworkConnectivityException`
/// and handle the errors based on the api error message,
/// e.g. `'not_found'`

handleNetworkResponse(NetworkServiceResponse response) {
  if (response.result != NetworkResult.SUCCESS) {
    if (response.result == NetworkResult.FAILURE) {
      logger.e("Exception here ${response.result}");
      throw NetworkConnectivityException(
          exceptionMessage: response.error as String);
    }
    throw ApiResponseException(
        exceptionMessage: response.error as String, data: response.data);
  }
  return response.data;
}
