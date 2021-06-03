import 'package:dio/dio.dart';

import 'network_service_response.dart';

/// Thrown on unhandled API exceptions
class ApiResponseException implements Exception {
  String exceptionMessage;
  dynamic data;

  ApiResponseException({this.exceptionMessage, this.data});

  @override
  String toString() => '{exceptionMessage: $exceptionMessage, data: $data}';
}

class NetworkConnectivityException implements Exception {
  var exceptionMessage = "No internet connectivity";
  NetworkConnectivityException({this.exceptionMessage});

  @override
  String toString() => '{exception: $exceptionMessage}';
}

NetworkServiceResponse handleException(DioError e, StackTrace trace) {
  if (e.response != null) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    dynamic errorData = {"error": e};
    try {
      if (e.response.statusCode >= 500) {
        return NetworkServiceResponse(
          result: NetworkResult.SERVER_ERROR,
          data: errorData,
          error: "hmm!, something is wrong, we are working to fix it",
        );
      } else {
        return NetworkServiceResponse(
          data: errorData,
          error: e.response?.data["message"] ??
              "hmm!, Looks like we didn't get that right, please try again!",
        );
      }
    } catch (e) {
      return NetworkServiceResponse(
        data: {"error": e},
        error: e.toString(),
      );
    }
  } else {
    // Something happened in setting up or sending the request that triggered an Error
    return NetworkServiceResponse(
      result: NetworkResult.FAILURE,
      data: {"error": e.message},
      error: e.message,
    );
  }
}

final errorCodes = {"ERROR_CODE": "Custom message"};
