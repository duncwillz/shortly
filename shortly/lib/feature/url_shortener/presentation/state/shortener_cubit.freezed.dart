// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shortener_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShortenerStateTearOff {
  const _$ShortenerStateTearOff();

// ignore: unused_element
  _InitialShortenerState initial({@required ShortenerStatePayload payload}) {
    return _InitialShortenerState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadingUrlShortenerState loadingUrl(
      {@required ShortenerStatePayload payload}) {
    return _LoadingUrlShortenerState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadedUrlShortenerState loadedUrl(
      {@required ShortenerStatePayload payload}) {
    return _LoadedUrlShortenerState(
      payload: payload,
    );
  }

// ignore: unused_element
  _ErrorShortenerState error({@required ShortenerStatePayload payload}) {
    return _ErrorShortenerState(
      payload: payload,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShortenerState = _$ShortenerStateTearOff();

/// @nodoc
mixin _$ShortenerState {
  ShortenerStatePayload get payload;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(ShortenerStatePayload payload),
    @required TResult loadingUrl(ShortenerStatePayload payload),
    @required TResult loadedUrl(ShortenerStatePayload payload),
    @required TResult error(ShortenerStatePayload payload),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(ShortenerStatePayload payload),
    TResult loadingUrl(ShortenerStatePayload payload),
    TResult loadedUrl(ShortenerStatePayload payload),
    TResult error(ShortenerStatePayload payload),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialShortenerState value),
    @required TResult loadingUrl(_LoadingUrlShortenerState value),
    @required TResult loadedUrl(_LoadedUrlShortenerState value),
    @required TResult error(_ErrorShortenerState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialShortenerState value),
    TResult loadingUrl(_LoadingUrlShortenerState value),
    TResult loadedUrl(_LoadedUrlShortenerState value),
    TResult error(_ErrorShortenerState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ShortenerStateCopyWith<ShortenerState> get copyWith;
}

/// @nodoc
abstract class $ShortenerStateCopyWith<$Res> {
  factory $ShortenerStateCopyWith(
          ShortenerState value, $Res Function(ShortenerState) then) =
      _$ShortenerStateCopyWithImpl<$Res>;
  $Res call({ShortenerStatePayload payload});

  $ShortenerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$ShortenerStateCopyWithImpl<$Res>
    implements $ShortenerStateCopyWith<$Res> {
  _$ShortenerStateCopyWithImpl(this._value, this._then);

  final ShortenerState _value;
  // ignore: unused_field
  final $Res Function(ShortenerState) _then;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed
          ? _value.payload
          : payload as ShortenerStatePayload,
    ));
  }

  @override
  $ShortenerStatePayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $ShortenerStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialShortenerStateCopyWith<$Res>
    implements $ShortenerStateCopyWith<$Res> {
  factory _$InitialShortenerStateCopyWith(_InitialShortenerState value,
          $Res Function(_InitialShortenerState) then) =
      __$InitialShortenerStateCopyWithImpl<$Res>;
  @override
  $Res call({ShortenerStatePayload payload});

  @override
  $ShortenerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialShortenerStateCopyWithImpl<$Res>
    extends _$ShortenerStateCopyWithImpl<$Res>
    implements _$InitialShortenerStateCopyWith<$Res> {
  __$InitialShortenerStateCopyWithImpl(_InitialShortenerState _value,
      $Res Function(_InitialShortenerState) _then)
      : super(_value, (v) => _then(v as _InitialShortenerState));

  @override
  _InitialShortenerState get _value => super._value as _InitialShortenerState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_InitialShortenerState(
      payload: payload == freezed
          ? _value.payload
          : payload as ShortenerStatePayload,
    ));
  }
}

/// @nodoc
class _$_InitialShortenerState implements _InitialShortenerState {
  const _$_InitialShortenerState({@required this.payload})
      : assert(payload != null);

  @override
  final ShortenerStatePayload payload;

  @override
  String toString() {
    return 'ShortenerState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialShortenerState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialShortenerStateCopyWith<_InitialShortenerState> get copyWith =>
      __$InitialShortenerStateCopyWithImpl<_InitialShortenerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(ShortenerStatePayload payload),
    @required TResult loadingUrl(ShortenerStatePayload payload),
    @required TResult loadedUrl(ShortenerStatePayload payload),
    @required TResult error(ShortenerStatePayload payload),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(ShortenerStatePayload payload),
    TResult loadingUrl(ShortenerStatePayload payload),
    TResult loadedUrl(ShortenerStatePayload payload),
    TResult error(ShortenerStatePayload payload),
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
    @required TResult initial(_InitialShortenerState value),
    @required TResult loadingUrl(_LoadingUrlShortenerState value),
    @required TResult loadedUrl(_LoadedUrlShortenerState value),
    @required TResult error(_ErrorShortenerState value),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialShortenerState value),
    TResult loadingUrl(_LoadingUrlShortenerState value),
    TResult loadedUrl(_LoadedUrlShortenerState value),
    TResult error(_ErrorShortenerState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialShortenerState implements ShortenerState {
  const factory _InitialShortenerState(
      {@required ShortenerStatePayload payload}) = _$_InitialShortenerState;

  @override
  ShortenerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$InitialShortenerStateCopyWith<_InitialShortenerState> get copyWith;
}

/// @nodoc
abstract class _$LoadingUrlShortenerStateCopyWith<$Res>
    implements $ShortenerStateCopyWith<$Res> {
  factory _$LoadingUrlShortenerStateCopyWith(_LoadingUrlShortenerState value,
          $Res Function(_LoadingUrlShortenerState) then) =
      __$LoadingUrlShortenerStateCopyWithImpl<$Res>;
  @override
  $Res call({ShortenerStatePayload payload});

  @override
  $ShortenerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingUrlShortenerStateCopyWithImpl<$Res>
    extends _$ShortenerStateCopyWithImpl<$Res>
    implements _$LoadingUrlShortenerStateCopyWith<$Res> {
  __$LoadingUrlShortenerStateCopyWithImpl(_LoadingUrlShortenerState _value,
      $Res Function(_LoadingUrlShortenerState) _then)
      : super(_value, (v) => _then(v as _LoadingUrlShortenerState));

  @override
  _LoadingUrlShortenerState get _value =>
      super._value as _LoadingUrlShortenerState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadingUrlShortenerState(
      payload: payload == freezed
          ? _value.payload
          : payload as ShortenerStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadingUrlShortenerState implements _LoadingUrlShortenerState {
  const _$_LoadingUrlShortenerState({@required this.payload})
      : assert(payload != null);

  @override
  final ShortenerStatePayload payload;

  @override
  String toString() {
    return 'ShortenerState.loadingUrl(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingUrlShortenerState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingUrlShortenerStateCopyWith<_LoadingUrlShortenerState> get copyWith =>
      __$LoadingUrlShortenerStateCopyWithImpl<_LoadingUrlShortenerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(ShortenerStatePayload payload),
    @required TResult loadingUrl(ShortenerStatePayload payload),
    @required TResult loadedUrl(ShortenerStatePayload payload),
    @required TResult error(ShortenerStatePayload payload),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return loadingUrl(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(ShortenerStatePayload payload),
    TResult loadingUrl(ShortenerStatePayload payload),
    TResult loadedUrl(ShortenerStatePayload payload),
    TResult error(ShortenerStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingUrl != null) {
      return loadingUrl(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialShortenerState value),
    @required TResult loadingUrl(_LoadingUrlShortenerState value),
    @required TResult loadedUrl(_LoadedUrlShortenerState value),
    @required TResult error(_ErrorShortenerState value),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return loadingUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialShortenerState value),
    TResult loadingUrl(_LoadingUrlShortenerState value),
    TResult loadedUrl(_LoadedUrlShortenerState value),
    TResult error(_ErrorShortenerState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingUrl != null) {
      return loadingUrl(this);
    }
    return orElse();
  }
}

abstract class _LoadingUrlShortenerState implements ShortenerState {
  const factory _LoadingUrlShortenerState(
      {@required ShortenerStatePayload payload}) = _$_LoadingUrlShortenerState;

  @override
  ShortenerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadingUrlShortenerStateCopyWith<_LoadingUrlShortenerState> get copyWith;
}

/// @nodoc
abstract class _$LoadedUrlShortenerStateCopyWith<$Res>
    implements $ShortenerStateCopyWith<$Res> {
  factory _$LoadedUrlShortenerStateCopyWith(_LoadedUrlShortenerState value,
          $Res Function(_LoadedUrlShortenerState) then) =
      __$LoadedUrlShortenerStateCopyWithImpl<$Res>;
  @override
  $Res call({ShortenerStatePayload payload});

  @override
  $ShortenerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedUrlShortenerStateCopyWithImpl<$Res>
    extends _$ShortenerStateCopyWithImpl<$Res>
    implements _$LoadedUrlShortenerStateCopyWith<$Res> {
  __$LoadedUrlShortenerStateCopyWithImpl(_LoadedUrlShortenerState _value,
      $Res Function(_LoadedUrlShortenerState) _then)
      : super(_value, (v) => _then(v as _LoadedUrlShortenerState));

  @override
  _LoadedUrlShortenerState get _value =>
      super._value as _LoadedUrlShortenerState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadedUrlShortenerState(
      payload: payload == freezed
          ? _value.payload
          : payload as ShortenerStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadedUrlShortenerState implements _LoadedUrlShortenerState {
  const _$_LoadedUrlShortenerState({@required this.payload})
      : assert(payload != null);

  @override
  final ShortenerStatePayload payload;

  @override
  String toString() {
    return 'ShortenerState.loadedUrl(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedUrlShortenerState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedUrlShortenerStateCopyWith<_LoadedUrlShortenerState> get copyWith =>
      __$LoadedUrlShortenerStateCopyWithImpl<_LoadedUrlShortenerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(ShortenerStatePayload payload),
    @required TResult loadingUrl(ShortenerStatePayload payload),
    @required TResult loadedUrl(ShortenerStatePayload payload),
    @required TResult error(ShortenerStatePayload payload),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return loadedUrl(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(ShortenerStatePayload payload),
    TResult loadingUrl(ShortenerStatePayload payload),
    TResult loadedUrl(ShortenerStatePayload payload),
    TResult error(ShortenerStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedUrl != null) {
      return loadedUrl(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialShortenerState value),
    @required TResult loadingUrl(_LoadingUrlShortenerState value),
    @required TResult loadedUrl(_LoadedUrlShortenerState value),
    @required TResult error(_ErrorShortenerState value),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return loadedUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialShortenerState value),
    TResult loadingUrl(_LoadingUrlShortenerState value),
    TResult loadedUrl(_LoadedUrlShortenerState value),
    TResult error(_ErrorShortenerState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedUrl != null) {
      return loadedUrl(this);
    }
    return orElse();
  }
}

abstract class _LoadedUrlShortenerState implements ShortenerState {
  const factory _LoadedUrlShortenerState(
      {@required ShortenerStatePayload payload}) = _$_LoadedUrlShortenerState;

  @override
  ShortenerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadedUrlShortenerStateCopyWith<_LoadedUrlShortenerState> get copyWith;
}

/// @nodoc
abstract class _$ErrorShortenerStateCopyWith<$Res>
    implements $ShortenerStateCopyWith<$Res> {
  factory _$ErrorShortenerStateCopyWith(_ErrorShortenerState value,
          $Res Function(_ErrorShortenerState) then) =
      __$ErrorShortenerStateCopyWithImpl<$Res>;
  @override
  $Res call({ShortenerStatePayload payload});

  @override
  $ShortenerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ErrorShortenerStateCopyWithImpl<$Res>
    extends _$ShortenerStateCopyWithImpl<$Res>
    implements _$ErrorShortenerStateCopyWith<$Res> {
  __$ErrorShortenerStateCopyWithImpl(
      _ErrorShortenerState _value, $Res Function(_ErrorShortenerState) _then)
      : super(_value, (v) => _then(v as _ErrorShortenerState));

  @override
  _ErrorShortenerState get _value => super._value as _ErrorShortenerState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_ErrorShortenerState(
      payload: payload == freezed
          ? _value.payload
          : payload as ShortenerStatePayload,
    ));
  }
}

/// @nodoc
class _$_ErrorShortenerState implements _ErrorShortenerState {
  const _$_ErrorShortenerState({@required this.payload})
      : assert(payload != null);

  @override
  final ShortenerStatePayload payload;

  @override
  String toString() {
    return 'ShortenerState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorShortenerState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ErrorShortenerStateCopyWith<_ErrorShortenerState> get copyWith =>
      __$ErrorShortenerStateCopyWithImpl<_ErrorShortenerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(ShortenerStatePayload payload),
    @required TResult loadingUrl(ShortenerStatePayload payload),
    @required TResult loadedUrl(ShortenerStatePayload payload),
    @required TResult error(ShortenerStatePayload payload),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(ShortenerStatePayload payload),
    TResult loadingUrl(ShortenerStatePayload payload),
    TResult loadedUrl(ShortenerStatePayload payload),
    TResult error(ShortenerStatePayload payload),
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
    @required TResult initial(_InitialShortenerState value),
    @required TResult loadingUrl(_LoadingUrlShortenerState value),
    @required TResult loadedUrl(_LoadedUrlShortenerState value),
    @required TResult error(_ErrorShortenerState value),
  }) {
    assert(initial != null);
    assert(loadingUrl != null);
    assert(loadedUrl != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialShortenerState value),
    TResult loadingUrl(_LoadingUrlShortenerState value),
    TResult loadedUrl(_LoadedUrlShortenerState value),
    TResult error(_ErrorShortenerState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorShortenerState implements ShortenerState {
  const factory _ErrorShortenerState(
      {@required ShortenerStatePayload payload}) = _$_ErrorShortenerState;

  @override
  ShortenerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$ErrorShortenerStateCopyWith<_ErrorShortenerState> get copyWith;
}

/// @nodoc
class _$ShortenerStatePayloadTearOff {
  const _$ShortenerStatePayloadTearOff();

// ignore: unused_element
  _ShortenerStatePayload call({UrlResultModel result, String errorMessage}) {
    return _ShortenerStatePayload(
      result: result,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShortenerStatePayload = _$ShortenerStatePayloadTearOff();

/// @nodoc
mixin _$ShortenerStatePayload {
  UrlResultModel get result;
  String get errorMessage;

  @JsonKey(ignore: true)
  $ShortenerStatePayloadCopyWith<ShortenerStatePayload> get copyWith;
}

/// @nodoc
abstract class $ShortenerStatePayloadCopyWith<$Res> {
  factory $ShortenerStatePayloadCopyWith(ShortenerStatePayload value,
          $Res Function(ShortenerStatePayload) then) =
      _$ShortenerStatePayloadCopyWithImpl<$Res>;
  $Res call({UrlResultModel result, String errorMessage});

  $UrlResultModelCopyWith<$Res> get result;
}

/// @nodoc
class _$ShortenerStatePayloadCopyWithImpl<$Res>
    implements $ShortenerStatePayloadCopyWith<$Res> {
  _$ShortenerStatePayloadCopyWithImpl(this._value, this._then);

  final ShortenerStatePayload _value;
  // ignore: unused_field
  final $Res Function(ShortenerStatePayload) _then;

  @override
  $Res call({
    Object result = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as UrlResultModel,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }

  @override
  $UrlResultModelCopyWith<$Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $UrlResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$ShortenerStatePayloadCopyWith<$Res>
    implements $ShortenerStatePayloadCopyWith<$Res> {
  factory _$ShortenerStatePayloadCopyWith(_ShortenerStatePayload value,
          $Res Function(_ShortenerStatePayload) then) =
      __$ShortenerStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({UrlResultModel result, String errorMessage});

  @override
  $UrlResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$ShortenerStatePayloadCopyWithImpl<$Res>
    extends _$ShortenerStatePayloadCopyWithImpl<$Res>
    implements _$ShortenerStatePayloadCopyWith<$Res> {
  __$ShortenerStatePayloadCopyWithImpl(_ShortenerStatePayload _value,
      $Res Function(_ShortenerStatePayload) _then)
      : super(_value, (v) => _then(v as _ShortenerStatePayload));

  @override
  _ShortenerStatePayload get _value => super._value as _ShortenerStatePayload;

  @override
  $Res call({
    Object result = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ShortenerStatePayload(
      result: result == freezed ? _value.result : result as UrlResultModel,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ShortenerStatePayload implements _ShortenerStatePayload {
  const _$_ShortenerStatePayload({this.result, this.errorMessage});

  @override
  final UrlResultModel result;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ShortenerStatePayload(result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortenerStatePayload &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ShortenerStatePayloadCopyWith<_ShortenerStatePayload> get copyWith =>
      __$ShortenerStatePayloadCopyWithImpl<_ShortenerStatePayload>(
          this, _$identity);
}

abstract class _ShortenerStatePayload implements ShortenerStatePayload {
  const factory _ShortenerStatePayload(
      {UrlResultModel result, String errorMessage}) = _$_ShortenerStatePayload;

  @override
  UrlResultModel get result;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ShortenerStatePayloadCopyWith<_ShortenerStatePayload> get copyWith;
}
