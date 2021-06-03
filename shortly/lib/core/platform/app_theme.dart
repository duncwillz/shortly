import 'package:flutter/material.dart';

class AppColors {
  static const cyan = Color(0xff2ACFCF);
  static const darkViolet = Color(0xff3B3054);
  static const red = Color(0xffF46262);
  static const lightGray = Color(0xffBFBFBF);
  static const gray = Color(0xff9E9AA7);
  static const grayishViolet = Color(0xff35323E);
  static const veryDarkViolet = Color(0xff232127);
  static const white = Color(0xffFFFFFF);
  static const offWhite = Color(0xffF0F1F6);
  static const backgroundColor = Color(0xffE5E5E5);
  static const fontColor = Color(0xff35323E);
}

final ThemeData appThemeLight = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.offWhite,
    brightness: Brightness.light,
    primaryColor: AppColors.cyan,
    primaryColorBrightness: Brightness.dark,
    accentColor: AppColors.darkViolet,
    accentColorBrightness: Brightness.dark,
    bottomAppBarColor: AppColors.white,
    cardColor: AppColors.white,
    dividerColor: AppColors.gray,
    highlightColor: AppColors.offWhite,
    splashColor: AppColors.offWhite,
    disabledColor: AppColors.gray,
    textSelectionColor: AppColors.grayishViolet,
    textSelectionHandleColor: AppColors.cyan,
    backgroundColor: AppColors.backgroundColor,
    dialogBackgroundColor: AppColors.backgroundColor,
    indicatorColor: AppColors.cyan,
    hintColor: AppColors.veryDarkViolet,
    errorColor: AppColors.red,
    fontFamily: "Poppins",
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.1,
      ),
      headline2: TextStyle(
        color: AppColors.fontColor,
        fontSize: 16,
        letterSpacing: 1.05,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(
        color: AppColors.fontColor,
        fontSize: 17,
        height: 1.3,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        color: AppColors.fontColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ));
