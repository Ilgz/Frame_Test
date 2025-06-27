import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trivia/core/error/exception.dart';
import 'package:trivia/core/error/failure.dart';
import 'package:trivia/features/data/remote/trivia_api_service.dart';
import 'package:trivia/features/quiz/data/models/question_model.dart';
import 'package:trivia/features/quiz/data/local/questions_local_datasource.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart';
import 'package:trivia/features/quiz/domain/repositories/quiz_repository.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl implements QuizRepository {
  final TriviaApiService _api;
  final QuestionsLocalDataSource _local;

  QuizRepositoryImpl(this._api, this._local);

  @override
  Future<TaskEither<Failure, List<Question>>> getQuestions({
    required int categoryId,
    required int amount,
    String? difficulty,
    String? type,
  }) async {
    return TaskEither<Failure, List<Question>>(() async {
      try {
        final remoteModels = await _api.fetchQuestions(
          categoryId: categoryId,
          amount: amount,
          difficulty: difficulty ?? '',
          type: type ?? '',
        );

        final entities =
            remoteModels
                .asMap()
                .entries
                .map((e) => e.value.toEntity(e.key, categoryId))
                .toList();

        await _local.cacheQuestions(categoryId, entities);

        return Right(entities);
      } on ServerException catch (e) {
        try {
          final localEntities = await _local.fetchQuestionsByCategory(
            categoryId,
          );
          if (localEntities.isNotEmpty) {
            return Right(localEntities);
          }
          return Left(ServerFailure(e.message));
        } on CacheException catch (ce) {
          return Left(CacheFailure(ce.message));
        }
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    });
  }
}
