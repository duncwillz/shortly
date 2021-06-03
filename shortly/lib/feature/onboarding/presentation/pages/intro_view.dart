import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortly/core/di/di_config.dart';
import 'package:shortly/core/platform/app_image.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';
import 'package:shortly/core/platform/string_constants.dart';
import 'package:shortly/core/presentation/widgets/page_wrapper.dart';
import 'package:shortly/core/presentation/widgets/shortly_button.dart';
import 'package:shortly/feature/onboarding/presentation/pages/walkthough_controller.dart';
import 'package:shortly/feature/url_shortener/presentation/pages/home_view.dart';

class IntroView extends StatefulWidget {
  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) => PageWrapper(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  Image.asset(AppImage.homeIllustration),
                  Center(
                    child: Text(
                      AppLocale.moreThanJust,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 35, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      AppLocale.buildBrand,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ShortlyButton(
                  title: AppLocale.start.toUpperCase(),
                  onTap: () {
                    final status = inject<SharedPreferences>()
                            .getBool(AppString.ONBOARDING_STATUS) ??
                        false;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                status ? HomeView() : WalkthroughController()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      );
}
