import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/feature/url_history/domain/repositories/history_repository.dart';
import 'package:shortly/feature/url_history/domain/usecases/delete_history.dart';
import 'package:shortly/feature/url_history/domain/usecases/get_history.dart';

import '../../fixtures/history_data.dart';

class MockHistoryRepository extends Mock implements HistoryRepository {}

void main() {
  GetHistory testGetHistory;
  DeleteHistory testDeleteHistory;

  MockHistoryRepository repository;

  setUp(() {
    repository = MockHistoryRepository();
    testGetHistory = GetHistory(repository);
    testDeleteHistory = DeleteHistory(repository);
  });

  group('Delete History Use case', () {
    test('get history calls HistoryRepository\'s get history', () {
      testDeleteHistory("historyId");

      verify(repository.deleteHistory("historyId"));
      verifyNoMoreInteractions(repository);

      // Need this to reset the interactions on mocked object
      clearInteractions(repository);
    });

    test('get history runs successfully', () async {
      final result = await testGetHistory();
      expect(result.isRight(), true);
      result.fold(null, (r) => expect(r, null));
    });

    // Test failures too
    test('get history returns an error message upon failure', () async {
      // Test NetworkFailure handling
      when(repository.getHistory()).thenThrow(CacheFailure('message'));

      final result = await testGetHistory();

      expect(result.isLeft(), true);
      result.fold((l) => expect(l.message, 'message'), null);
    });
  });
}
