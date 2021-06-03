import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/database/database_exceptions.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/feature/url_history/data/datasources/history_local_datasource.dart';
import 'package:shortly/feature/url_history/data/repositories/history_repository_impl.dart';

import '../../fixtures/history_data.dart';

class MockLocalDataSource extends Mock implements HistoryLocalDataSource {}

void main() {
  HistoryRepositoryImpl testSubject;
  final localDatasource = MockLocalDataSource();

  setUp(() {
    testSubject = HistoryRepositoryImpl(localDatasource);
  });

  group('get History', () {
    test(' calls localDatasource\'s to get url history', () {
      testSubject.getHistory();

      verify(localDatasource.getHistory());
      verifyNoMoreInteractions(localDatasource);
      clearInteractions(localDatasource);
    });

    test(' returns a list of UrlResultsModel from server', () async {
      when(localDatasource.getHistory())
          .thenAnswer((_) async => listOfHistoryData);
      final _posts = await testSubject.getHistory();

      expect(_posts, listOfHistoryData);
    });

    group('Error handling', () {
      test('Throws a NetworkFailure on network operation exception', () {
        when(localDatasource.getHistory()).thenThrow((_) =>
            DatabaseResponseException(exceptionMessage: "Error occured"));

        expectLater(
            () async => testSubject.getHistory(), throwsA(isA<CacheFailure>()));
      });
    });
  });
}
