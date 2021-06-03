import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/di_config.dart';
import 'core/platform/app_theme.dart';
import 'core/platform/env_config.dart';
import 'core/platform/locale/intl/app_localization.dart';
import 'core/platform/string_constants.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/presentation/state/cubit_providers.dart';
import 'feature/onboarding/presentation/pages/intro_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  FlavorConfig(
      flavor: Flavor.PRODUCTION,
      values: FlavorValues(baseUrl: AppString.BASE_URL));

  await Hive.initFlutter();
  await initInjectors();

  await runZoned<Future<Null>>(() async {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: cubitProviders,
        child: MaterialApp(
          title: "Shortly",
          theme: appThemeLight,
          home: IntroView(),
          debugShowCheckedModeBanner: false,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('fr', 'FR'),
            Locale('de', 'CH'),
          ],
        ),
      );
}
