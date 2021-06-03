import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocale {
  static Locale locale = const Locale('en');

  static String get moreThanJust =>
      _localizedValues[locale.languageCode]["moreThanJust"];
  static String get buildBrand =>
      _localizedValues[locale.languageCode]["buildBrand"];
  static String get start => _localizedValues[locale.languageCode]["start"];
  static String get brandRec =>
      _localizedValues[locale.languageCode]["brandRec"];
  static String get boostBrand =>
      _localizedValues[locale.languageCode]["boostBrand"];
  static String get detailedRec =>
      _localizedValues[locale.languageCode]["detailedRec"];

  static String get gainInsight =>
      _localizedValues[locale.languageCode]["gainInsight"];
  static String get fully => _localizedValues[locale.languageCode]["fully"];
  static String get improve => _localizedValues[locale.languageCode]["improve"];
  static String get letsStart =>
      _localizedValues[locale.languageCode]["letsStart"];
  static String get pasteFirst =>
      _localizedValues[locale.languageCode]["pasteFirst"];
  static String get shorten => _localizedValues[locale.languageCode]["shorten"];
  static String get shortenIt =>
      _localizedValues[locale.languageCode]["shortenIt"];
  static String get pleaseAdd =>
      _localizedValues[locale.languageCode]["pleaseAdd"];
  static String get copy => _localizedValues[locale.languageCode]["copy"];
  static String get copied => _localizedValues[locale.languageCode]["copied"];
  static String get skip => _localizedValues[locale.languageCode]["skip"];
  static String get done => _localizedValues[locale.languageCode]["done"];
  static String get linkHistory =>
      _localizedValues[locale.languageCode]["linkHistory"];
  static String get noHistory =>
      _localizedValues[locale.languageCode]["noHistory"];

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      "moreThanJust": 'More than just shorter links',
      "buildBrand":
          'Build your brand’s recognition and get detailed insights on how your links are performing.',
      "start": 'Start',
      "brandRec": 'Brand Recognition',
      "boostBrand":
          """Boost your brand recognition with each click. Generic links don’t mean a thing. Branded links help instil confidence in your content.""",
      "detailedRec": 'Detailed Records ',
      "gainInsight":
          """Gain insights into who is clicking your links. Knowing when and where people engage with your content helps inform better decisions.""",
      "fully": 'Fully Customizable ',
      "improve":
          """Improve brand awareness and content discoverability through customizable links, supercharglng audience engagement.""",
      "letsStart": 'Let’s get started!',
      "pasteFirst": 'Paste your first link into the field to shorten it',
      "shorten": 'Shorten a link here ...',
      "shortenIt": 'Shorten it!',
      "pleaseAdd": 'Please add a link here',
      "copy": 'Copy',
      "copied": 'Copied!',
      "skip": 'Skip',
      "done": 'Done!',
      "noHistory": 'You have no history!',
      "linkHistory": "Your Link History",
    },
  };
}
