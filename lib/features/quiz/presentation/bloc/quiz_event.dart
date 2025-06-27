part of 'quiz_bloc.dart';

@freezed
abstract class QuizEvent with _$QuizEvent {
  const factory QuizEvent.load({
    required int categoryId,
    @Default(10) int amount,
    String? difficulty,
    String? type,
  }) = LoadQuiz;

  const factory QuizEvent.answer(String answer) = AnswerQuestion;

  const factory QuizEvent.reset() = ResetQuiz;
}