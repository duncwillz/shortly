import 'package:flutter/foundation.dart';

enum Flavor { STAGE, PRODUCTION }

class FlavorValues {
  FlavorValues({
    @required this.baseUrl,
  });
  final String baseUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues values;
  static FlavorConfig _instance;

  factory FlavorConfig(
      {@required Flavor flavor, @required FlavorValues values}) {
    // ignore: join_return_with_assignment
    _instance ??= FlavorConfig._internal(flavor, values);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.values);
  static FlavorConfig get instance => _instance;

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isStage() => _instance.flavor == Flavor.STAGE;
}
