import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/feature/url_history/domain/repositories/history_repository.dart';
import 'package:shortly/feature/url_history/domain/usecases/delete_history.dart';
import 'package:shortly/feature/url_history/domain/usecases/get_history.dart';

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
    test('delete history calls HistoryRepository\'s delete history', () {
      testDeleteHistory("historyId");

      verify(repository.deleteHistory("historyId"));
      verifyNoMoreInteractions(repository);

      // Need this to reset the interactions on mocked object
      clearInteractions(repository);
    });

    test('delete history called without a param throws an exception', () {
      expect(testDeleteHistory(null), throwsA(isA<Exception>()));
      verifyZeroInteractions(repository);
    });

    test('delete history runs successfully', () async {
      final result = await testDeleteHistory("historyId");

      expect(result.isRight(), true);
      result.fold(null, (r) => expect(r, null));
    });

    // Test failures
    test('delete history returns an error message upon failure', () async {
      when(repository.deleteHistory("historyId"))
          .thenThrow(CacheFailure('message'));

      final result = await testDeleteHistory("historyId");

      expect(result.isLeft(), true);
      result.fold((l) => expect(l.message, 'message'), null);
    });
  });
}
