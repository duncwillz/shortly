import 'package:get_it/get_it.dart';
import 'package:shortly/feature/url_history/domain/di/injector.dart';
import 'package:shortly/feature/url_shortener/domain/di/injector.dart';

import 'core_di.dart';

GetIt inject = GetIt.instance;

/// Registration of service locators with GetIt
///
/// Add any of such injectors here
Future<void> initInjectors() async {
  await coreInjector();
  await shortenerInjector();
  await historyInjector();
}
