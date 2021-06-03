part of 'history_cubit.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState.initial({@required HistoryStatePayload payload}) =
      _InitialHistoryState;
  const factory HistoryState.error({@required HistoryStatePayload payload}) =
      _ErrorHistoryState;
  const factory HistoryState.loadingHistory(
      {@required HistoryStatePayload payload}) = _LoadingHistoryState;
  const factory HistoryState.loadedHistory(
      {@required HistoryStatePayload payload}) = _LoadedHistoryState;
  const factory HistoryState.deletingHistory(
      {@required HistoryStatePayload payload}) = _DeletingHistoryState;
  const factory HistoryState.deletedHistory(
      {@required HistoryStatePayload payload}) = _DeletedHistoryState;
}

@freezed
abstract class HistoryStatePayload with _$HistoryStatePayload {
  const factory HistoryStatePayload({
    List<HistoryData> history,
    String errorMessage,
  }) = _HistoryStatePayload;
}
