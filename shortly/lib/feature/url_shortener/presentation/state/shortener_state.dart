part of 'shortener_cubit.dart';

@freezed
abstract class ShortenerState with _$ShortenerState {
  const factory ShortenerState.initial(
      {@required ShortenerStatePayload payload}) = _InitialShortenerState;
  const factory ShortenerState.loadingUrl(
      {@required ShortenerStatePayload payload}) = _LoadingUrlShortenerState;
  const factory ShortenerState.loadedUrl(
      {@required ShortenerStatePayload payload}) = _LoadedUrlShortenerState;
  const factory ShortenerState.error(
      {@required ShortenerStatePayload payload}) = _ErrorShortenerState;
}

@freezed
abstract class ShortenerStatePayload with _$ShortenerStatePayload {
  const factory ShortenerStatePayload({
    UrlResultModel result,
    String errorMessage,
  }) = _ShortenerStatePayload;
}
