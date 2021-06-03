import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_response_model.freezed.dart';
part 'url_response_model.g.dart';

@freezed
abstract class UrlResponseModel with _$UrlResponseModel {
  const factory UrlResponseModel({
    @JsonKey(name: 'ok') bool status,
    @JsonKey(name: 'result') UrlResultModel result,
  }) = _UrlResponseModel;

  factory UrlResponseModel.fromJson(Map json) => _$UrlResponseModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}

@freezed
abstract class UrlResultModel with _$UrlResultModel {
  const factory UrlResultModel({
    @JsonKey(name: 'code') String resultsCode,
    @JsonKey(name: 'short_link') String shortLink,
    @JsonKey(name: 'full_short_link') String fullShortLink,
    @JsonKey(name: 'short_link2') String shortLinkV2,
    @JsonKey(name: 'full_short_link2') String fullShortLinkV2,
    @JsonKey(name: 'full_share_link') String fullShareLink,
    @JsonKey(name: 'original_link') String originalLink,
  }) = _UrlResultModel;

  factory UrlResultModel.fromJson(Map json) => _$UrlResultModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
