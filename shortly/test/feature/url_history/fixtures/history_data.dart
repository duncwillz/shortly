import 'package:shortly/core/data/database/db_config.dart';

final HistoryData historyData =
    HistoryData(shortLink: "url1", originalLink: "url2");

List<HistoryData> listOfHistoryData = [
  HistoryData(shortLink: "url", originalLink: "url"),
  HistoryData(shortLink: "url1", originalLink: "url2"),
  HistoryData(shortLink: "url3", originalLink: "url3")
];
Future<List<HistoryData>> futureListOfHistoryData() => Future.value([
      HistoryData(shortLink: "url", originalLink: "url"),
      HistoryData(shortLink: "url1", originalLink: "url2"),
      HistoryData(shortLink: "url3", originalLink: "url3")
    ]);

final deletedHistory = [
  HistoryData(shortLink: "url1", originalLink: "url2"),
  HistoryData(shortLink: "url3", originalLink: "url3")
];
final historyJson = {"shortLink": "url1", "originalLink": "url2"};
