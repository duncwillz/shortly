
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';

UrlResultModel resultModel = const UrlResultModel(
    resultsCode: "KCveN",
    shortLink: "google.com",
    fullShortLink: "https://shrtco.de/KCveN",
    shortLinkV2: "9qr.de/KCveN",
    fullShortLinkV2: "https://9qr.de/KCveN",
    fullShareLink: "shrtco.de/share/KCveN",
    originalLink: "http://example.org/very/long/link.html");

final postJson = <String, dynamic>{
  "ok": true,
  "result": {
    "code": "KCveN",
    "short_link": "google.com",
    "full_short_link": "https://shrtco.de/KCveN",
    "short_link2": "9qr.de/KCveN",
    "full_short_link2": "https://9qr.de/KCveN",
    "full_share_link": "https://shrtco.de/share/KCveN",
    "original_link": "http://example.org/very/long/link.html",
  }
};
