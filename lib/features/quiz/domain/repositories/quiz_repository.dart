import 'package:fpdart/fpdart.dart';
import 'package:trivia/core/error/failure.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart';

abstract class QuizRepository {
  Future<TaskEither<Failure, List<Question>>> getQuestions({
    required int categoryId,
    required int amount,
    String? difficulty,
    String? type,
  });
}
