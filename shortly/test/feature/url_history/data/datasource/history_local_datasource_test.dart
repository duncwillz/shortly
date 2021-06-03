import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/database/database_exceptions.dart';
import 'package:shortly/core/data/database/db_config.dart';
import 'package:shortly/feature/url_history/data/datasources/history_local_datasource.dart';
import 'package:shortly/feature/url_history/domain/db/history_dao.dart';

import '../../fixtures/history_data.dart';

class MockLocalDatabase extends Mock implements LocalDatabaseConfig {}

class MockHistoryDao extends Mock implements HistoryDao {}

void main() {
  HistoryLocalDataSourceImpl testSubject;
  final mockDao = MockHistoryDao();

  setUp(() {
    testSubject = HistoryLocalDataSourceImpl(mockDao);
  });

  group('get history', () {
    test(' returns a successfully deserialised HistoryData from local DB',
        () async {
      when(mockDao.getAllHistory()).thenAnswer((_) async => listOfHistoryData);

      final result = await testSubject.getHistory();

      expect(result, listOfHistoryData);
    });

    group('Error handling', () {
      test('Throws an DatabaseResponseException on server error', () {
        when(mockDao.getAllHistory()).thenThrow(
          (_) async => DatabaseResponseException(exceptionMessage: "error"),
        );

        expectLater(() async => testSubject.getHistory(),
            throwsA(isA<DatabaseResponseException>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(mockDao.getAllHistory()).thenThrow(Exception());

        expect(() => testSubject.getHistory(), throwsA(isA<Exception>()));
      });
    });
  });

  group('delete history', () {
    test(' returns a successfully deleted HistoryData from local DB', () async {
      when(mockDao.deleteHistory("url")).thenAnswer((_) async => null);

      final result = await testSubject.getHistory();

      expect(result, null);
    });

    group('Error handling', () {
      test('Throws an ApiFailure on server error', () {
        when(mockDao.deleteHistory(argThat(isA<String>()))).thenThrow(
          (_) async => DatabaseResponseException(exceptionMessage: "error"),
        );

        expectLater(() async => testSubject.getHistory(),
            throwsA(isA<DatabaseResponseException>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(mockDao.deleteHistory(argThat(isA<String>())))
            .thenThrow(Exception());

        expect(() => testSubject.getHistory(), throwsA(isA<Exception>()));
      });
    });
  });
}
