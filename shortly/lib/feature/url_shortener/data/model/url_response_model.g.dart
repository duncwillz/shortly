// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UrlResponseModel _$_$_UrlResponseModelFromJson(Map<String, dynamic> json) {
  return _$_UrlResponseModel(
    status: json['ok'] as bool,
    result: json['result'] == null
        ? null
        : UrlResultModel.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UrlResponseModelToJson(
        _$_UrlResponseModel instance) =>
    <String, dynamic>{
      'ok': instance.status,
      'result': instance.result,
    };

_$_UrlResultModel _$_$_UrlResultModelFromJson(Map<String, dynamic> json) {
  return _$_UrlResultModel(
    resultsCode: json['code'] as String,
    shortLink: json['short_link'] as String,
    fullShortLink: json['full_short_link'] as String,
    shortLinkV2: json['short_link2'] as String,
    fullShortLinkV2: json['full_short_link2'] as String,
    fullShareLink: json['full_share_link'] as String,
    originalLink: json['original_link'] as String,
  );
}

Map<String, dynamic> _$_$_UrlResultModelToJson(_$_UrlResultModel instance) =>
    <String, dynamic>{
      'code': instance.resultsCode,
      'short_link': instance.shortLink,
      'full_short_link': instance.fullShortLink,
      'short_link2': instance.shortLinkV2,
      'full_short_link2': instance.fullShortLinkV2,
      'full_share_link': instance.fullShareLink,
      'original_link': instance.originalLink,
    };
