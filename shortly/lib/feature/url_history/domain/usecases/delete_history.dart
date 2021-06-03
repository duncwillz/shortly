import 'package:dartz/dartz.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/core/presentation/domain/ui_exceptions.dart';
import 'package:shortly/core/presentation/domain/usercase_typedefs.dart';
import 'package:shortly/core/utils/error_helpers.dart';
import 'package:shortly/feature/url_history/domain/repositories/history_repository.dart';

/// Requires [String] id and returns a boolean
class DeleteHistory implements UseCase<bool, String> {
  DeleteHistory(this._repo);
  final HistoryRepository _repo;

  @override
  Future<Either<UIError, bool>> call([params]) async {
    UseCase.assertParamsRequired(params);
    try {
      final res = await _repo.deleteHistory(params);

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
