import 'package:moor_flutter/moor_flutter.dart';

/// Database entity model. This layer can be be generated from
/// The feature model layer. You don't need to explicitly define
/// Models. The faster and safest is to leverage on the serialization model
/// to generate db entities
class History extends Table {
  TextColumn get shortLink => text()();
  TextColumn get originalLink => text()();

  @override
  Set<Column> get primaryKey => {shortLink};
}
