import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/core/platform/app_image.dart';
import 'package:shortly/core/platform/locale/intl/app_localization.dart';

class ShortenerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 14),
            Image.asset(AppImage.homeIllustration),
            Text(
              AppLocale.letsStart,
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                AppLocale.pasteFirst,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}
