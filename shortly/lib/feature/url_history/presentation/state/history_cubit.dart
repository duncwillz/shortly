import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/feature/url_history/domain/usecases/delete_history.dart';
import 'package:shortly/feature/url_history/domain/usecases/get_history.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final GetHistory _getHistory;
  final DeleteHistory _deleteHistory;

  static const _initialHistoryState = HistoryState.initial(
    payload: HistoryStatePayload(history: []),
  );

  HistoryCubit(this._getHistory, this._deleteHistory)
      : super(_initialHistoryState);

  Future<void> getHistory() async {
    emit(HistoryState.loadingHistory(payload: state.payload.copyWith()));

    final res = await _getHistory();

    res.fold(
        (l) => emit(HistoryState.error(
            payload: state.payload.copyWith(errorMessage: l.message))), (r) {
      emit(HistoryState.loadedHistory(
        payload: state.payload.copyWith(history: r),
      ));
    });
  }

  Future<void> deleteHistory(String historyId) async {
    emit(HistoryState.loadingHistory(payload: state.payload.copyWith()));

    final res = await _deleteHistory(historyId);

    res.fold(
        (l) => emit(HistoryState.error(
            payload: state.payload.copyWith(errorMessage: l.message))), (r) {
      if (r) {
        if (r) {
          state.payload.history
              .removeWhere((_history) => _history.shortLink == historyId);
        }
        emit(HistoryState.loadedHistory(
          payload: state.payload.copyWith(history: state.payload.history),
        ));
      }
    });
  }
}
