import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/feature/url_shortener/domain/repositories/shortener_repository.dart';
import 'package:shortly/feature/url_shortener/domain/usecases/post_url.dart';

import '../../fixtures/url_results_data.dart';

class MockShortenerRepository extends Mock implements ShortenerRepository {}

void main() {
  PostUrl testSubject;

  MockShortenerRepository repository;

  setUp(() {
    repository = MockShortenerRepository();
    testSubject = PostUrl(repository);
  });

  group('Shortener Repository', () {
    test('postUrl calls ShortnerRepository\'s postUrl', () {
      testSubject("url");

      verify(repository.postUrl(url: "url"));
      verifyNoMoreInteractions(repository);

      // Need this to reset the interactions on mocked object
      clearInteractions(repository);
    });

    test('postUrl called without a param throws an exception', () {
      expect(testSubject(null), throwsA(isA<Exception>()));
      verifyZeroInteractions(repository);
    });

    test('postUrl runs successfully', () async {
      when(repository.postUrl(url: "url"));

      final result = await testSubject("url");

      expect(result.isRight(), true);
      result.fold(null, (r) => expect(r, null));
    });
    // Test failures
  });

  test('postUrl returns an error message upon network failure', () async {
    // Test NetworkFailure handling
    when(repository.postUrl(url: "url")).thenThrow(NetworkFailure('message'));

    final result = await testSubject("url");

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);
  });

  test('postUrl returns an error message upon cache failure', () async {
    // Test CacheFailure handling
    when(repository.postUrl(url: "url")).thenThrow(CacheFailure('message'));

    final result2 = await testSubject("url");

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
