import 'package:flutter/foundation.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/core/data/network/network_exceptions.dart';
import 'package:shortly/core/presentation/domain/ui_exceptions.dart';

import 'logger.dart';

/// Return a `UIError` with a human readable [message].
///
/// This is intended to be used in the Usecase `NetwokFailure` and `CacheFailure`
/// handler, and [message] should be a human readable error messages,
/// so that the bloc layer that makes use of usecases can just propagate these errors
/// to the UI without needing to do any extra processing.
// ignore: prefer_expression_function_bodies
UIError getUIErrorFromUsecaseFailure(
        String message, dynamic exception, StackTrace stackTrace) =>
    UIError(message);

/// Return a `CacheFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `DBFailure` catch block,
/// for all errors originating from the RemotLocalDatasource, so that the error may
/// be also logged.
// ignore: prefer_expression_function_bodies
CacheFailure getCacheFailureFromDBFailure(
    DBFailure exception, StackTrace stackTrace) {
  // ignore: avoid_print
  if (kDebugMode)
    logger.e('DB Failure: ${exception.message} | ${exception.data}');

  return CacheFailure(exception.message);
}

NetworkFailure getNetworkFailureFromApiFailure(
  ApiResponseException exception,
  StackTrace stackTrace, {
  dynamic errorCode,
}) {
  final String exceptionMessage = exception.exceptionMessage;
  if (exceptionMessage != null) {
    // Send to Any error reporting provider if there is any
  }
  return NetworkFailure(exceptionMessage);
}
