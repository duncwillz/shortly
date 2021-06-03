import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:shortly/core/presentation/domain/ui_exceptions.dart';
import 'package:shortly/feature/url_history/domain/usecases/delete_history.dart';
import 'package:shortly/feature/url_history/domain/usecases/get_history.dart';
import 'package:shortly/feature/url_history/presentation/state/history_cubit.dart';
import '../../../../core/mock_hydrated_block.dart';
import '../../../url_shortener/fixtures/url_results_data.dart';
import '../../fixtures/history_data.dart';

class MockGetHistory extends Mock implements GetHistory {}

class MockDeleteHistory extends Mock implements DeleteHistory {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final deleteHistory = MockDeleteHistory();
  final getHistory = MockGetHistory();

  // Mock Usecase Responses
  when(getHistory.call(any)).thenAnswer((_) async => Right(listOfHistoryData));

  group('History Cubit', () {
    test(
      'Initial behaviour: HistoryCubit is initialised with empty list',
      () {
        final cubit = HistoryCubit(
          getHistory,
          deleteHistory,
        );
        expect(cubit.state.payload.history, []);
        expect(cubit.state.payload.errorMessage, null);
      },
    );
  });

  group("History cubit", () {
    test(
        'History cubit get history emits loading, then loaded, with payload populated with returned data',
        () async {
      final cubit = HistoryCubit(
        getHistory,
        deleteHistory,
      );

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<HistoryState>[
            HistoryState.loadingHistory(
                payload: cubit.state.payload.copyWith(history: [])),
            HistoryState.loadedHistory(
                payload:
                    cubit.state.payload.copyWith(history: listOfHistoryData)),
          ]));

      await cubit.getHistory();

      verify(getHistory());
    });

    test(
        'HistoryCubit get history emits loading, then error, with error message, if something goes wrong',
        () async {
      final cubit = HistoryCubit(
        getHistory,
        deleteHistory,
      );

      when(getHistory.call(any))
          .thenAnswer((_) async => const Left(UIError('error')));

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<HistoryState>[
            HistoryState.loadingHistory(
                payload: cubit.state.payload.copyWith(history: [])),
            HistoryState.error(
                payload: cubit.state.payload.copyWith(errorMessage: 'error')),
          ]));

      await cubit.getHistory();

      verify(getHistory());
    });
  });
}
