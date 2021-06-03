/// Importing [required] from the flutter material library
import 'package:flutter/material.dart' show required;
import 'package:shortly/core/data/database/db_config.dart';

abstract class HistoryRepository {
  Future<List<HistoryData>> getHistory();
  Future<bool> deleteHistory(String id);
}
