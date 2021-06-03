// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'url_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UrlResponseModel _$UrlResponseModelFromJson(Map<String, dynamic> json) {
  return _UrlResponseModel.fromJson(json);
}

/// @nodoc
class _$UrlResponseModelTearOff {
  const _$UrlResponseModelTearOff();

// ignore: unused_element
  _UrlResponseModel call(
      {@JsonKey(name: 'ok') bool status,
      @JsonKey(name: 'result') UrlResultModel result}) {
    return _UrlResponseModel(
      status: status,
      result: result,
    );
  }

// ignore: unused_element
  UrlResponseModel fromJson(Map<String, Object> json) {
    return UrlResponseModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UrlResponseModel = _$UrlResponseModelTearOff();

/// @nodoc
mixin _$UrlResponseModel {
  @JsonKey(name: 'ok')
  bool get status;
  @JsonKey(name: 'result')
  UrlResultModel get result;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UrlResponseModelCopyWith<UrlResponseModel> get copyWith;
}

/// @nodoc
abstract class $UrlResponseModelCopyWith<$Res> {
  factory $UrlResponseModelCopyWith(
          UrlResponseModel value, $Res Function(UrlResponseModel) then) =
      _$UrlResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ok') bool status,
      @JsonKey(name: 'result') UrlResultModel result});

  $UrlResultModelCopyWith<$Res> get result;
}

/// @nodoc
class _$UrlResponseModelCopyWithImpl<$Res>
    implements $UrlResponseModelCopyWith<$Res> {
  _$UrlResponseModelCopyWithImpl(this._value, this._then);

  final UrlResponseModel _value;
  // ignore: unused_field
  final $Res Function(UrlResponseModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as bool,
      result: result == freezed ? _value.result : result as UrlResultModel,
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
abstract class _$UrlResponseModelCopyWith<$Res>
    implements $UrlResponseModelCopyWith<$Res> {
  factory _$UrlResponseModelCopyWith(
          _UrlResponseModel value, $Res Function(_UrlResponseModel) then) =
      __$UrlResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ok') bool status,
      @JsonKey(name: 'result') UrlResultModel result});

  @override
  $UrlResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$UrlResponseModelCopyWithImpl<$Res>
    extends _$UrlResponseModelCopyWithImpl<$Res>
    implements _$UrlResponseModelCopyWith<$Res> {
  __$UrlResponseModelCopyWithImpl(
      _UrlResponseModel _value, $Res Function(_UrlResponseModel) _then)
      : super(_value, (v) => _then(v as _UrlResponseModel));

  @override
  _UrlResponseModel get _value => super._value as _UrlResponseModel;

  @override
  $Res call({
    Object status = freezed,
    Object result = freezed,
  }) {
    return _then(_UrlResponseModel(
      status: status == freezed ? _value.status : status as bool,
      result: result == freezed ? _value.result : result as UrlResultModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UrlResponseModel implements _UrlResponseModel {
  const _$_UrlResponseModel(
      {@JsonKey(name: 'ok') this.status, @JsonKey(name: 'result') this.result});

  factory _$_UrlResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UrlResponseModelFromJson(json);

  @override
  @JsonKey(name: 'ok')
  final bool status;
  @override
  @JsonKey(name: 'result')
  final UrlResultModel result;

  @override
  String toString() {
    return 'UrlResponseModel(status: $status, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UrlResponseModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$UrlResponseModelCopyWith<_UrlResponseModel> get copyWith =>
      __$UrlResponseModelCopyWithImpl<_UrlResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UrlResponseModelToJson(this);
  }
}

abstract class _UrlResponseModel implements UrlResponseModel {
  const factory _UrlResponseModel(
      {@JsonKey(name: 'ok') bool status,
      @JsonKey(name: 'result') UrlResultModel result}) = _$_UrlResponseModel;

  factory _UrlResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UrlResponseModel.fromJson;

  @override
  @JsonKey(name: 'ok')
  bool get status;
  @override
  @JsonKey(name: 'result')
  UrlResultModel get result;
  @override
  @JsonKey(ignore: true)
  _$UrlResponseModelCopyWith<_UrlResponseModel> get copyWith;
}

UrlResultModel _$UrlResultModelFromJson(Map<String, dynamic> json) {
  return _UrlResultModel.fromJson(json);
}

/// @nodoc
class _$UrlResultModelTearOff {
  const _$UrlResultModelTearOff();

// ignore: unused_element
  _UrlResultModel call(
      {@JsonKey(name: 'code') String resultsCode,
      @JsonKey(name: 'short_link') String shortLink,
      @JsonKey(name: 'full_short_link') String fullShortLink,
      @JsonKey(name: 'short_link2') String shortLinkV2,
      @JsonKey(name: 'full_short_link2') String fullShortLinkV2,
      @JsonKey(name: 'full_share_link') String fullShareLink,
      @JsonKey(name: 'original_link') String originalLink}) {
    return _UrlResultModel(
      resultsCode: resultsCode,
      shortLink: shortLink,
      fullShortLink: fullShortLink,
      shortLinkV2: shortLinkV2,
      fullShortLinkV2: fullShortLinkV2,
      fullShareLink: fullShareLink,
      originalLink: originalLink,
    );
  }

// ignore: unused_element
  UrlResultModel fromJson(Map<String, Object> json) {
    return UrlResultModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UrlResultModel = _$UrlResultModelTearOff();

/// @nodoc
mixin _$UrlResultModel {
  @JsonKey(name: 'code')
  String get resultsCode;
  @JsonKey(name: 'short_link')
  String get shortLink;
  @JsonKey(name: 'full_short_link')
  String get fullShortLink;
  @JsonKey(name: 'short_link2')
  String get shortLinkV2;
  @JsonKey(name: 'full_short_link2')
  String get fullShortLinkV2;
  @JsonKey(name: 'full_share_link')
  String get fullShareLink;
  @JsonKey(name: 'original_link')
  String get originalLink;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UrlResultModelCopyWith<UrlResultModel> get copyWith;
}

/// @nodoc
abstract class $UrlResultModelCopyWith<$Res> {
  factory $UrlResultModelCopyWith(
          UrlResultModel value, $Res Function(UrlResultModel) then) =
      _$UrlResultModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String resultsCode,
      @JsonKey(name: 'short_link') String shortLink,
      @JsonKey(name: 'full_short_link') String fullShortLink,
      @JsonKey(name: 'short_link2') String shortLinkV2,
      @JsonKey(name: 'full_short_link2') String fullShortLinkV2,
      @JsonKey(name: 'full_share_link') String fullShareLink,
      @JsonKey(name: 'original_link') String originalLink});
}

/// @nodoc
class _$UrlResultModelCopyWithImpl<$Res>
    implements $UrlResultModelCopyWith<$Res> {
  _$UrlResultModelCopyWithImpl(this._value, this._then);

  final UrlResultModel _value;
  // ignore: unused_field
  final $Res Function(UrlResultModel) _then;

  @override
  $Res call({
    Object resultsCode = freezed,
    Object shortLink = freezed,
    Object fullShortLink = freezed,
    Object shortLinkV2 = freezed,
    Object fullShortLinkV2 = freezed,
    Object fullShareLink = freezed,
    Object originalLink = freezed,
  }) {
    return _then(_value.copyWith(
      resultsCode:
          resultsCode == freezed ? _value.resultsCode : resultsCode as String,
      shortLink: shortLink == freezed ? _value.shortLink : shortLink as String,
      fullShortLink: fullShortLink == freezed
          ? _value.fullShortLink
          : fullShortLink as String,
      shortLinkV2:
          shortLinkV2 == freezed ? _value.shortLinkV2 : shortLinkV2 as String,
      fullShortLinkV2: fullShortLinkV2 == freezed
          ? _value.fullShortLinkV2
          : fullShortLinkV2 as String,
      fullShareLink: fullShareLink == freezed
          ? _value.fullShareLink
          : fullShareLink as String,
      originalLink: originalLink == freezed
          ? _value.originalLink
          : originalLink as String,
    ));
  }
}

/// @nodoc
abstract class _$UrlResultModelCopyWith<$Res>
    implements $UrlResultModelCopyWith<$Res> {
  factory _$UrlResultModelCopyWith(
          _UrlResultModel value, $Res Function(_UrlResultModel) then) =
      __$UrlResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String resultsCode,
      @JsonKey(name: 'short_link') String shortLink,
      @JsonKey(name: 'full_short_link') String fullShortLink,
      @JsonKey(name: 'short_link2') String shortLinkV2,
      @JsonKey(name: 'full_short_link2') String fullShortLinkV2,
      @JsonKey(name: 'full_share_link') String fullShareLink,
      @JsonKey(name: 'original_link') String originalLink});
}

/// @nodoc
class __$UrlResultModelCopyWithImpl<$Res>
    extends _$UrlResultModelCopyWithImpl<$Res>
    implements _$UrlResultModelCopyWith<$Res> {
  __$UrlResultModelCopyWithImpl(
      _UrlResultModel _value, $Res Function(_UrlResultModel) _then)
      : super(_value, (v) => _then(v as _UrlResultModel));

  @override
  _UrlResultModel get _value => super._value as _UrlResultModel;

  @override
  $Res call({
    Object resultsCode = freezed,
    Object shortLink = freezed,
    Object fullShortLink = freezed,
    Object shortLinkV2 = freezed,
    Object fullShortLinkV2 = freezed,
    Object fullShareLink = freezed,
    Object originalLink = freezed,
  }) {
    return _then(_UrlResultModel(
      resultsCode:
          resultsCode == freezed ? _value.resultsCode : resultsCode as String,
      shortLink: shortLink == freezed ? _value.shortLink : shortLink as String,
      fullShortLink: fullShortLink == freezed
          ? _value.fullShortLink
          : fullShortLink as String,
      shortLinkV2:
          shortLinkV2 == freezed ? _value.shortLinkV2 : shortLinkV2 as String,
      fullShortLinkV2: fullShortLinkV2 == freezed
          ? _value.fullShortLinkV2
          : fullShortLinkV2 as String,
      fullShareLink: fullShareLink == freezed
          ? _value.fullShareLink
          : fullShareLink as String,
      originalLink: originalLink == freezed
          ? _value.originalLink
          : originalLink as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UrlResultModel implements _UrlResultModel {
  const _$_UrlResultModel(
      {@JsonKey(name: 'code') this.resultsCode,
      @JsonKey(name: 'short_link') this.shortLink,
      @JsonKey(name: 'full_short_link') this.fullShortLink,
      @JsonKey(name: 'short_link2') this.shortLinkV2,
      @JsonKey(name: 'full_short_link2') this.fullShortLinkV2,
      @JsonKey(name: 'full_share_link') this.fullShareLink,
      @JsonKey(name: 'original_link') this.originalLink});

  factory _$_UrlResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UrlResultModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String resultsCode;
  @override
  @JsonKey(name: 'short_link')
  final String shortLink;
  @override
  @JsonKey(name: 'full_short_link')
  final String fullShortLink;
  @override
  @JsonKey(name: 'short_link2')
  final String shortLinkV2;
  @override
  @JsonKey(name: 'full_short_link2')
  final String fullShortLinkV2;
  @override
  @JsonKey(name: 'full_share_link')
  final String fullShareLink;
  @override
  @JsonKey(name: 'original_link')
  final String originalLink;

  @override
  String toString() {
    return 'UrlResultModel(resultsCode: $resultsCode, shortLink: $shortLink, fullShortLink: $fullShortLink, shortLinkV2: $shortLinkV2, fullShortLinkV2: $fullShortLinkV2, fullShareLink: $fullShareLink, originalLink: $originalLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UrlResultModel &&
            (identical(other.resultsCode, resultsCode) ||
                const DeepCollectionEquality()
                    .equals(other.resultsCode, resultsCode)) &&
            (identical(other.shortLink, shortLink) ||
                const DeepCollectionEquality()
                    .equals(other.shortLink, shortLink)) &&
            (identical(other.fullShortLink, fullShortLink) ||
                const DeepCollectionEquality()
                    .equals(other.fullShortLink, fullShortLink)) &&
            (identical(other.shortLinkV2, shortLinkV2) ||
                const DeepCollectionEquality()
                    .equals(other.shortLinkV2, shortLinkV2)) &&
            (identical(other.fullShortLinkV2, fullShortLinkV2) ||
                const DeepCollectionEquality()
                    .equals(other.fullShortLinkV2, fullShortLinkV2)) &&
            (identical(other.fullShareLink, fullShareLink) ||
                const DeepCollectionEquality()
                    .equals(other.fullShareLink, fullShareLink)) &&
            (identical(other.originalLink, originalLink) ||
                const DeepCollectionEquality()
                    .equals(other.originalLink, originalLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resultsCode) ^
      const DeepCollectionEquality().hash(shortLink) ^
      const DeepCollectionEquality().hash(fullShortLink) ^
      const DeepCollectionEquality().hash(shortLinkV2) ^
      const DeepCollectionEquality().hash(fullShortLinkV2) ^
      const DeepCollectionEquality().hash(fullShareLink) ^
      const DeepCollectionEquality().hash(originalLink);

  @JsonKey(ignore: true)
  @override
  _$UrlResultModelCopyWith<_UrlResultModel> get copyWith =>
      __$UrlResultModelCopyWithImpl<_UrlResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UrlResultModelToJson(this);
  }
}

abstract class _UrlResultModel implements UrlResultModel {
  const factory _UrlResultModel(
      {@JsonKey(name: 'code') String resultsCode,
      @JsonKey(name: 'short_link') String shortLink,
      @JsonKey(name: 'full_short_link') String fullShortLink,
      @JsonKey(name: 'short_link2') String shortLinkV2,
      @JsonKey(name: 'full_short_link2') String fullShortLinkV2,
      @JsonKey(name: 'full_share_link') String fullShareLink,
      @JsonKey(name: 'original_link') String originalLink}) = _$_UrlResultModel;

  factory _UrlResultModel.fromJson(Map<String, dynamic> json) =
      _$_UrlResultModel.fromJson;

  @override
  @JsonKey(name: 'code')
  String get resultsCode;
  @override
  @JsonKey(name: 'short_link')
  String get shortLink;
  @override
  @JsonKey(name: 'full_short_link')
  String get fullShortLink;
  @override
  @JsonKey(name: 'short_link2')
  String get shortLinkV2;
  @override
  @JsonKey(name: 'full_short_link2')
  String get fullShortLinkV2;
  @override
  @JsonKey(name: 'full_share_link')
  String get fullShareLink;
  @override
  @JsonKey(name: 'original_link')
  String get originalLink;
  @override
  @JsonKey(ignore: true)
  _$UrlResultModelCopyWith<_UrlResultModel> get copyWith;
}
