import 'package:get_it/get_it.dart';

import 'core_di.dart';

GetIt inject = GetIt.instance;

/// Registration of service locators with GetIt
///
/// Add any of such injectors here
Future<void> initInjectors() async {
  await coreInjector();
}
