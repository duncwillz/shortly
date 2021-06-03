import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_local_datasource.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_remote_datasource.dart';
import 'package:shortly/feature/url_shortener/data/repositories/shortener_repository_impl.dart';

import '../../fixtures/url_results_data.dart';

class MockShortenerRemoteDataSource extends Mock
    implements ShortenerRemoteDataSource {}

class MockShortenerLocalDataSource extends Mock
    implements ShortenerLocalDataSource {}

void main() {
  ShortenerRepositoryImpl testSubject;
  final remoteDatasource = MockShortenerRemoteDataSource();
  final localDatasource = MockShortenerLocalDataSource();

  setUp(() {
    testSubject = ShortenerRepositoryImpl(remoteDatasource, localDatasource);
  });

  group('Post Url', () {
    test(' calls remoteDatasource\'s to shorten url', () {
      testSubject.postUrl(url: "url");

      verify(remoteDatasource.postUrl("url"));
      verifyNoMoreInteractions(remoteDatasource);

      clearInteractions(remoteDatasource);
    });

    test(' returns a UrlResultsModel from server', () async {
      when(remoteDatasource.postUrl("url"))
          .thenAnswer((_) async => resultModel);
      final _posts = await testSubject.postUrl(url: "url");

      expect(_posts, resultModel);
    });
  });
}
