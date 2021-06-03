import 'package:dartz/dartz.dart';
import 'package:shortly/core/data/exceptions/app_exceptions.dart';
import 'package:shortly/core/presentation/domain/ui_exceptions.dart';
import 'package:shortly/core/presentation/domain/usercase_typedefs.dart';
import 'package:shortly/core/utils/error_helpers.dart';
import 'package:shortly/feature/url_shortener/data/model/url_response_model.dart';
import 'package:shortly/feature/url_shortener/domain/repositories/shortener_repository.dart';

/// Requires [String] which is the url.  This layer is essentially filtering the
///  The response type propagated from the repository,
/// Serves as medium of communication between the repository layer and the
/// Presentation layer. This give the flexibility and SoC for a particular feature
class PostUrl implements UseCase<UrlResultModel, String> {
  PostUrl(this._repo);
  final ShortenerRepository _repo;

  @override
  Future<Either<UIError, UrlResultModel>> call([params]) async {
    UseCase.assertParamsRequired(params);
    try {
      final res = await _repo.postUrl(url: params);

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
