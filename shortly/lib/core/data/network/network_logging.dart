import 'dart:convert';

import 'package:dio/dio.dart';

String logRequest(RequestOptions options) {
  return "================== Network Request ================== "
      "\nURL = ${options.uri} Method = ${options.method}"
      "\ndata = ${json.encode(options.data)} "
      "\nHeaders = ${options.headers}\n"
      "====================================================";
}

String logResponse(Response response) {
  return "================== Network Response ================== "
      "\nURL = ${response.request.uri} Method = ${response.request.method} Status = ${response.statusCode}"
      "\nResponse data = ${json.encode(response.data)}"
      "\nHeaders = ${response.headers}\n"
      "\nRequest data = ${response.request.data}\n"
      "====================================================";
}

/// In case where server fails 5xx we log the request URL/METHOD and response code only
/// The reason we don't log data or headers to Sentry is for security purposes
String sentryResponseLog(Response response) {
  return "URL = ${response.request.uri} Method = ${response.request.method} Response Status = ${response.statusCode}";
}
