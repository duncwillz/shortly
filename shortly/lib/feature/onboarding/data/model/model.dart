import 'package:shortly/core/platform/app_image.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';

class WalkThroughModel {
  String title;
  String imagePath;
  String content;
  WalkThroughModel({this.title, this.content, this.imagePath});
}

List<WalkThroughModel> walkThroughData = [
  WalkThroughModel(
      title: AppLocale.brandRec,
      content: AppLocale.boostBrand,
      imagePath: AppImage.diagram),
  WalkThroughModel(
      title: AppLocale.detailedRec,
      content: AppLocale.gainInsight,
      imagePath: AppImage.gauge),
  WalkThroughModel(
      title: AppLocale.fully,
      content: AppLocale.improve,
      imagePath: AppImage.tools),
];
