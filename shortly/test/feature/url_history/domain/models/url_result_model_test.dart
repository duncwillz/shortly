import 'package:flutter_test/flutter_test.dart';
import 'package:shortly/core/data/database/db_config.dart';

import '../../../url_shortener/fixtures/url_results_data.dart';
import '../../fixtures/history_data.dart';

void main() {
  test('fromJson returns a HistoryData',
      () => expect(HistoryData.fromJson(historyJson), historyData));
  test('toJson returns a valid Map<String, dynamic>',
      () => expect(historyData.toJson(), historyJson));
}
