import 'package:flutter_test/flutter_test.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';

import '../../fixtures/url_results_data.dart';

void main() {
  test(
      'fromJson returns a UrlResultModel',
      () => expect(UrlResultModel.fromJson(postJson).originalLink,
          resultModel.originalLink));
  test('toJson returns a valid Map<String, dynamic>',
      () => expect(resultModel.shortLink, postJson["short_link"]));
}
