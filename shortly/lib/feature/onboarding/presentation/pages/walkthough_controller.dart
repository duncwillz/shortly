import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortly/core/di/di_config.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';
import 'package:shortly/core/platform/string_constants.dart';
import 'package:shortly/core/presentation/widgets/page_wrapper.dart';
import 'package:shortly/feature/onboarding/data/model/model.dart';
import 'package:shortly/feature/onboarding/presentation/pages/walkthrough_indicator.dart';
import 'package:shortly/feature/onboarding/presentation/pages/walkthrough_view.dart';
import 'package:shortly/feature/url_shortener/presentation/pages/home_view.dart';

class WalkthroughController extends StatefulWidget {
  @override
  _WalkthroughControllerState createState() => _WalkthroughControllerState();
}

class _WalkthroughControllerState extends State<WalkthroughController> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) => PageWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .12,
            ),
            Flexible(
                child: PageView(
              onPageChanged: (value) {
                setState(() => selectedIndex = value);
              },
              children: walkThroughData
                  .map((model) => WalkThroughView(
                        walkThroughModel: model,
                      ))
                  .toList(),
            )),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: walkThroughData
                    .map((model) => WalkthroughIndicator(
                          selected:
                              selectedIndex == walkThroughData.indexOf(model),
                        ))
                    .toList()),
            SizedBox(height: MediaQuery.of(context).size.height * .08),
            GestureDetector(
                onTap: () {
                  if (selectedIndex == walkThroughData.length - 1) {
                    inject<SharedPreferences>()
                        .setBool(AppString.ONBOARDING_STATUS, true);
                  }

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeView()));
                },
                child: Text(
                  selectedIndex == walkThroughData.length - 1
                      ? AppLocale.done
                      : AppLocale.skip,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 17),
                )),
            SizedBox(height: MediaQuery.of(context).size.height * .08)
          ],
        ),
      );
}
