import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/presentation/domain/ui_exceptions.dart';
import 'package:shortly/feature/url_shortener/domain/usecases/post_url.dart';
import 'package:shortly/feature/url_shortener/presentation/state/shortener_cubit.dart';

import '../../../core/mock_hydrated_block.dart';
import '../fixtures/url_results_data.dart';

class MockPostUrl extends Mock implements PostUrl {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final postUrl = MockPostUrl();

  when(postUrl.call("url")).thenAnswer((_) async => Right(resultModel));

  group('Shortener Cubit', () {
    test(
      'Initial behaviour: PostsCubit is initialised with empty list (and reads cached data from hydrated storage)',
      () {
        final cubit = ShortenerCubit(postUrl);
        expect(cubit.state.payload.result, null);
      },
    );
  });

  group("Shortener cubit", () {
    test(
        'Shortener cubit post url emits loading, then loaded, with payload populated with returned data',
        () async {
      final cubit = ShortenerCubit(postUrl);

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<ShortenerState>[
            ShortenerState.loadingUrl(
                payload: cubit.state.payload.copyWith(result: null)),
            ShortenerState.loadedUrl(
                payload: cubit.state.payload.copyWith(result: resultModel)),
          ]));

      await cubit.postUrl(url: "url");

      verify(postUrl.call("url"));
    });

    test(
        'ShortenerCubit post url emits loading, then error, with error message, if something goes wrong',
        () async {
      final cubit = ShortenerCubit(postUrl);

      when(postUrl.call(any))
          .thenAnswer((_) async => const Left(UIError('error')));

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<ShortenerState>[
            ShortenerState.loadingUrl(
                payload: cubit.state.payload.copyWith(result: null)),
            ShortenerState.error(
                payload: cubit.state.payload.copyWith(errorMessage: 'error')),
          ]));

      await cubit.postUrl(url: "url");

      verify(postUrl.call("url"));
    });
  });
}
