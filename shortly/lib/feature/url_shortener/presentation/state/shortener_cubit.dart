import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';
import 'package:shortly/feature/url_shortener/domain/usecases/post_url.dart';

part 'shortener_cubit.freezed.dart';
part 'shortener_state.dart';

/// This layer serves as a bridge between the app's business logic and the
/// The presentation layer. States are emitted from this cubit and the Presentation layers
/// responds or render or perform state specific actions.
class ShortenerCubit extends Cubit<ShortenerState> {
  final PostUrl _postUrl;

  static const _initialShortenerState = ShortenerState.loadedUrl(
    payload: ShortenerStatePayload(result: null, errorMessage: ''),
  );

  ShortenerCubit(this._postUrl) : super(_initialShortenerState);

  Future<void> postUrl({String url}) async {
    emit(ShortenerState.loadingUrl(payload: state.payload.copyWith()));
    final res = await _postUrl(url);

    res.fold(
      (l) => emit(ShortenerState.error(
          payload: state.payload.copyWith(errorMessage: l.message))),
      (r) => emit(
          ShortenerState.loadedUrl(payload: state.payload.copyWith(result: r))),
    );
  }
}
