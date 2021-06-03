// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

// ignore: unused_element
  _InitialHistoryState initial({@required HistoryStatePayload payload}) {
    return _InitialHistoryState(
      payload: payload,
    );
  }

// ignore: unused_element
  _ErrorHistoryState error({@required HistoryStatePayload payload}) {
    return _ErrorHistoryState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadingHistoryState loadingHistory({@required HistoryStatePayload payload}) {
    return _LoadingHistoryState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadedHistoryState loadedHistory({@required HistoryStatePayload payload}) {
    return _LoadedHistoryState(
      payload: payload,
    );
  }

// ignore: unused_element
  _DeletingHistoryState deletingHistory(
      {@required HistoryStatePayload payload}) {
    return _DeletingHistoryState(
      payload: payload,
    );
  }

// ignore: unused_element
  _DeletedHistoryState deletedHistory({@required HistoryStatePayload payload}) {
    return _DeletedHistoryState(
      payload: payload,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  HistoryStatePayload get payload;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call({HistoryStatePayload payload});

  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $HistoryStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$InitialHistoryStateCopyWith(_InitialHistoryState value,
          $Res Function(_InitialHistoryState) then) =
      __$InitialHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$InitialHistoryStateCopyWith<$Res> {
  __$InitialHistoryStateCopyWithImpl(
      _InitialHistoryState _value, $Res Function(_InitialHistoryState) _then)
      : super(_value, (v) => _then(v as _InitialHistoryState));

  @override
  _InitialHistoryState get _value => super._value as _InitialHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_InitialHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_InitialHistoryState implements _InitialHistoryState {
  const _$_InitialHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialHistoryStateCopyWith<_InitialHistoryState> get copyWith =>
      __$InitialHistoryStateCopyWithImpl<_InitialHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHistoryState implements HistoryState {
  const factory _InitialHistoryState({@required HistoryStatePayload payload}) =
      _$_InitialHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$InitialHistoryStateCopyWith<_InitialHistoryState> get copyWith;
}

/// @nodoc
abstract class _$ErrorHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$ErrorHistoryStateCopyWith(
          _ErrorHistoryState value, $Res Function(_ErrorHistoryState) then) =
      __$ErrorHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ErrorHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$ErrorHistoryStateCopyWith<$Res> {
  __$ErrorHistoryStateCopyWithImpl(
      _ErrorHistoryState _value, $Res Function(_ErrorHistoryState) _then)
      : super(_value, (v) => _then(v as _ErrorHistoryState));

  @override
  _ErrorHistoryState get _value => super._value as _ErrorHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_ErrorHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_ErrorHistoryState implements _ErrorHistoryState {
  const _$_ErrorHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ErrorHistoryStateCopyWith<_ErrorHistoryState> get copyWith =>
      __$ErrorHistoryStateCopyWithImpl<_ErrorHistoryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorHistoryState implements HistoryState {
  const factory _ErrorHistoryState({@required HistoryStatePayload payload}) =
      _$_ErrorHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$ErrorHistoryStateCopyWith<_ErrorHistoryState> get copyWith;
}

/// @nodoc
abstract class _$LoadingHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$LoadingHistoryStateCopyWith(_LoadingHistoryState value,
          $Res Function(_LoadingHistoryState) then) =
      __$LoadingHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$LoadingHistoryStateCopyWith<$Res> {
  __$LoadingHistoryStateCopyWithImpl(
      _LoadingHistoryState _value, $Res Function(_LoadingHistoryState) _then)
      : super(_value, (v) => _then(v as _LoadingHistoryState));

  @override
  _LoadingHistoryState get _value => super._value as _LoadingHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadingHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadingHistoryState implements _LoadingHistoryState {
  const _$_LoadingHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.loadingHistory(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingHistoryStateCopyWith<_LoadingHistoryState> get copyWith =>
      __$LoadingHistoryStateCopyWithImpl<_LoadingHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return loadingHistory(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingHistory != null) {
      return loadingHistory(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return loadingHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingHistory != null) {
      return loadingHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadingHistoryState implements HistoryState {
  const factory _LoadingHistoryState({@required HistoryStatePayload payload}) =
      _$_LoadingHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadingHistoryStateCopyWith<_LoadingHistoryState> get copyWith;
}

/// @nodoc
abstract class _$LoadedHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$LoadedHistoryStateCopyWith(
          _LoadedHistoryState value, $Res Function(_LoadedHistoryState) then) =
      __$LoadedHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$LoadedHistoryStateCopyWith<$Res> {
  __$LoadedHistoryStateCopyWithImpl(
      _LoadedHistoryState _value, $Res Function(_LoadedHistoryState) _then)
      : super(_value, (v) => _then(v as _LoadedHistoryState));

  @override
  _LoadedHistoryState get _value => super._value as _LoadedHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadedHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadedHistoryState implements _LoadedHistoryState {
  const _$_LoadedHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.loadedHistory(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedHistoryStateCopyWith<_LoadedHistoryState> get copyWith =>
      __$LoadedHistoryStateCopyWithImpl<_LoadedHistoryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return loadedHistory(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedHistory != null) {
      return loadedHistory(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return loadedHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedHistory != null) {
      return loadedHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadedHistoryState implements HistoryState {
  const factory _LoadedHistoryState({@required HistoryStatePayload payload}) =
      _$_LoadedHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadedHistoryStateCopyWith<_LoadedHistoryState> get copyWith;
}

/// @nodoc
abstract class _$DeletingHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$DeletingHistoryStateCopyWith(_DeletingHistoryState value,
          $Res Function(_DeletingHistoryState) then) =
      __$DeletingHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$DeletingHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$DeletingHistoryStateCopyWith<$Res> {
  __$DeletingHistoryStateCopyWithImpl(
      _DeletingHistoryState _value, $Res Function(_DeletingHistoryState) _then)
      : super(_value, (v) => _then(v as _DeletingHistoryState));

  @override
  _DeletingHistoryState get _value => super._value as _DeletingHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_DeletingHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_DeletingHistoryState implements _DeletingHistoryState {
  const _$_DeletingHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.deletingHistory(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletingHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$DeletingHistoryStateCopyWith<_DeletingHistoryState> get copyWith =>
      __$DeletingHistoryStateCopyWithImpl<_DeletingHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return deletingHistory(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletingHistory != null) {
      return deletingHistory(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return deletingHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletingHistory != null) {
      return deletingHistory(this);
    }
    return orElse();
  }
}

abstract class _DeletingHistoryState implements HistoryState {
  const factory _DeletingHistoryState({@required HistoryStatePayload payload}) =
      _$_DeletingHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$DeletingHistoryStateCopyWith<_DeletingHistoryState> get copyWith;
}

/// @nodoc
abstract class _$DeletedHistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$DeletedHistoryStateCopyWith(_DeletedHistoryState value,
          $Res Function(_DeletedHistoryState) then) =
      __$DeletedHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({HistoryStatePayload payload});

  @override
  $HistoryStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$DeletedHistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$DeletedHistoryStateCopyWith<$Res> {
  __$DeletedHistoryStateCopyWithImpl(
      _DeletedHistoryState _value, $Res Function(_DeletedHistoryState) _then)
      : super(_value, (v) => _then(v as _DeletedHistoryState));

  @override
  _DeletedHistoryState get _value => super._value as _DeletedHistoryState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_DeletedHistoryState(
      payload:
          payload == freezed ? _value.payload : payload as HistoryStatePayload,
    ));
  }
}

/// @nodoc
class _$_DeletedHistoryState implements _DeletedHistoryState {
  const _$_DeletedHistoryState({@required this.payload})
      : assert(payload != null);

  @override
  final HistoryStatePayload payload;

  @override
  String toString() {
    return 'HistoryState.deletedHistory(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletedHistoryState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$DeletedHistoryStateCopyWith<_DeletedHistoryState> get copyWith =>
      __$DeletedHistoryStateCopyWithImpl<_DeletedHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HistoryStatePayload payload),
    @required TResult error(HistoryStatePayload payload),
    @required TResult loadingHistory(HistoryStatePayload payload),
    @required TResult loadedHistory(HistoryStatePayload payload),
    @required TResult deletingHistory(HistoryStatePayload payload),
    @required TResult deletedHistory(HistoryStatePayload payload),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return deletedHistory(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HistoryStatePayload payload),
    TResult error(HistoryStatePayload payload),
    TResult loadingHistory(HistoryStatePayload payload),
    TResult loadedHistory(HistoryStatePayload payload),
    TResult deletingHistory(HistoryStatePayload payload),
    TResult deletedHistory(HistoryStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedHistory != null) {
      return deletedHistory(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialHistoryState value),
    @required TResult error(_ErrorHistoryState value),
    @required TResult loadingHistory(_LoadingHistoryState value),
    @required TResult loadedHistory(_LoadedHistoryState value),
    @required TResult deletingHistory(_DeletingHistoryState value),
    @required TResult deletedHistory(_DeletedHistoryState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingHistory != null);
    assert(loadedHistory != null);
    assert(deletingHistory != null);
    assert(deletedHistory != null);
    return deletedHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialHistoryState value),
    TResult error(_ErrorHistoryState value),
    TResult loadingHistory(_LoadingHistoryState value),
    TResult loadedHistory(_LoadedHistoryState value),
    TResult deletingHistory(_DeletingHistoryState value),
    TResult deletedHistory(_DeletedHistoryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedHistory != null) {
      return deletedHistory(this);
    }
    return orElse();
  }
}

abstract class _DeletedHistoryState implements HistoryState {
  const factory _DeletedHistoryState({@required HistoryStatePayload payload}) =
      _$_DeletedHistoryState;

  @override
  HistoryStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$DeletedHistoryStateCopyWith<_DeletedHistoryState> get copyWith;
}

/// @nodoc
class _$HistoryStatePayloadTearOff {
  const _$HistoryStatePayloadTearOff();

// ignore: unused_element
  _HistoryStatePayload call({List<HistoryData> history, String errorMessage}) {
    return _HistoryStatePayload(
      history: history,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HistoryStatePayload = _$HistoryStatePayloadTearOff();

/// @nodoc
mixin _$HistoryStatePayload {
  List<HistoryData> get history;
  String get errorMessage;

  @JsonKey(ignore: true)
  $HistoryStatePayloadCopyWith<HistoryStatePayload> get copyWith;
}

/// @nodoc
abstract class $HistoryStatePayloadCopyWith<$Res> {
  factory $HistoryStatePayloadCopyWith(
          HistoryStatePayload value, $Res Function(HistoryStatePayload) then) =
      _$HistoryStatePayloadCopyWithImpl<$Res>;
  $Res call({List<HistoryData> history, String errorMessage});
}

/// @nodoc
class _$HistoryStatePayloadCopyWithImpl<$Res>
    implements $HistoryStatePayloadCopyWith<$Res> {
  _$HistoryStatePayloadCopyWithImpl(this._value, this._then);

  final HistoryStatePayload _value;
  // ignore: unused_field
  final $Res Function(HistoryStatePayload) _then;

  @override
  $Res call({
    Object history = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      history:
          history == freezed ? _value.history : history as List<HistoryData>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$HistoryStatePayloadCopyWith<$Res>
    implements $HistoryStatePayloadCopyWith<$Res> {
  factory _$HistoryStatePayloadCopyWith(_HistoryStatePayload value,
          $Res Function(_HistoryStatePayload) then) =
      __$HistoryStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({List<HistoryData> history, String errorMessage});
}

/// @nodoc
class __$HistoryStatePayloadCopyWithImpl<$Res>
    extends _$HistoryStatePayloadCopyWithImpl<$Res>
    implements _$HistoryStatePayloadCopyWith<$Res> {
  __$HistoryStatePayloadCopyWithImpl(
      _HistoryStatePayload _value, $Res Function(_HistoryStatePayload) _then)
      : super(_value, (v) => _then(v as _HistoryStatePayload));

  @override
  _HistoryStatePayload get _value => super._value as _HistoryStatePayload;

  @override
  $Res call({
    Object history = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_HistoryStatePayload(
      history:
          history == freezed ? _value.history : history as List<HistoryData>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_HistoryStatePayload implements _HistoryStatePayload {
  const _$_HistoryStatePayload({this.history, this.errorMessage});

  @override
  final List<HistoryData> history;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HistoryStatePayload(history: $history, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HistoryStatePayload &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$HistoryStatePayloadCopyWith<_HistoryStatePayload> get copyWith =>
      __$HistoryStatePayloadCopyWithImpl<_HistoryStatePayload>(
          this, _$identity);
}

abstract class _HistoryStatePayload implements HistoryStatePayload {
  const factory _HistoryStatePayload(
      {List<HistoryData> history,
      String errorMessage}) = _$_HistoryStatePayload;

  @override
  List<HistoryData> get history;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$HistoryStatePayloadCopyWith<_HistoryStatePayload> get copyWith;
}
