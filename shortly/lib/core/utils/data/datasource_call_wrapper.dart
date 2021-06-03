import 'package:flutter/foundation.dart';
import 'package:shortly/core/data/database/database_exceptions.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/core/data/network/network_exceptions.dart';

import '../error_helpers.dart';
import '../logger.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure] or [CacheFailure].
///
/// This is intended to always be used for ALL remoteDatasurce  and localDataSoure calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// Error types can further be customize. Introducing a layer that filter the error codes.
/// This is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
Future<T> remoteDataSourceResponseWrapper<T>(Function run,
    {String source}) async {
  try {
    final val = await run() as T;
    return val;
  } on ApiResponseException catch (e, s) {
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      errorCode: e.data,
    );
  } on NetworkConnectivityException catch (e, s) {
    // Report API exceptions to Error reporting provider if there's any
    logger.e("Exception source >>>>> $source");
    throw NetworkFailure("Check your internet connection and try again");
  } catch (e, s) {
    throw NetworkFailure(!kReleaseMode
        ? e.toString()
        : "Hmmm, Something went wrong, we are working to fix it.");
  }
}

Future<T> localDataSourceResponseWrapper<T>(Function run,
    {String source}) async {
  try {
    final val = await run() as T;
    return val;
  } on DatabaseResponseException catch (e, s) {
    throw CacheFailure(e.exceptionMessage);
  } catch (e, s) {
    logger.e("Exception source >>>>> $source");
    logger.e("Stack trace >>>>> $s");
    logger.e("Exception trace >>>>> $e");
    throw getCacheFailureFromDBFailure(DBFailure("Error reading for DB"), s);
  }
}
