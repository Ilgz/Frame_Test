part of 'quiz_bloc.dart';

@freezed
sealed class QuizState with _$QuizState {
  const factory QuizState.initial() = QuizInitial;

  const factory QuizState.loading() = QuizLoading;

  const factory QuizState.loaded({
    required List<Question> questions,
    @Default(0) int currentIndex,
    @Default(0) int correctCount,
  }) = QuizLoaded;

  const factory QuizState.answerResult({
    required List<Question> questions,
    required int currentIndex,
    required int correctCount,
    required bool isCorrect,
  }) = QuizAnswerResult;

  const factory QuizState.completed({
    required int total,
    required int correct,
  }) = QuizCompleted;

  const factory QuizState.error({required String message}) = QuizError;
}
