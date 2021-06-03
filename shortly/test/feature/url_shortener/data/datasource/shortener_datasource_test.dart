import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/data/network/network_exceptions.dart';
import 'package:shortly/core/data/network/network_service.dart';
import 'package:shortly/core/data/network/network_service_response.dart';
import 'package:shortly/feature/url_shortener/data/datasources/endpoints.dart';
import 'package:shortly/feature/url_shortener/data/datasources/shortener_remote_datasource.dart';

import '../../fixtures/url_results_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  ShortenerRemoteDataSourceImpl testSubject;
  final networkService = MockNetworkService();

  setUp(() {
    testSubject = ShortenerRemoteDataSourceImpl(networkService);
  });

  group('post url', () {
    test(' returns a successfully deserialised UrlResultModel from server',
        () async {
      when(networkService.get(ShortenerEndpoints.shorten,
              queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => NetworkServiceResponse(
              result: NetworkResult.SUCCESS, data: postJson));

      final result = await testSubject.postUrl("url");
      expect(result.originalLink, resultModel.originalLink);
    });

    group('Error handling', () {
      test('Throws an ApiResponseException on server error', () {
        when(networkService.get(ShortenerEndpoints.shorten,
                queryParameters: anyNamed('queryParameters')))
            .thenAnswer((_) async => NetworkServiceResponse(
                result: NetworkResult.BAD_REQUEST,
                data: {"statusCode": 404, "message": "Bad Request Not Found"}));
        expect(() => testSubject.postUrl("url"),
            throwsA(isA<ApiResponseException>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(networkService.get(ShortenerEndpoints.shorten,
                queryParameters: anyNamed('queryParameters')))
            .thenThrow(Exception());
        expect(() => testSubject.postUrl("someUrl"), throwsA(isA<Exception>()));
      });
    });
  });
}
