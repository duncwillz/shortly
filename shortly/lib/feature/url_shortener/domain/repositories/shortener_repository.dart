/// Importing [required] from the flutter material library
import 'package:flutter/material.dart' show required;
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';

abstract class ShortenerRepository {
  Future<UrlResultModel> postUrl({@required String url});
}
