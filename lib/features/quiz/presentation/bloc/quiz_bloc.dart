import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/features/quiz/domain/repositories/quiz_repository.dart';

part 'quiz_state.dart';
part 'quiz_event.dart';
part 'quiz_bloc.freezed.dart';

@injectable
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizRepository _repo;

  QuizBloc(this._repo) : super(const QuizState.initial()) {
    on<LoadQuiz>(_onLoadQuiz);
    on<AnswerQuestion>(_onAnswer);
    on<ResetQuiz>(_onReset);
  }

  Future<void> _onLoadQuiz(LoadQuiz event, Emitter<QuizState> emit) async {
    emit(const QuizState.loading());

    final result = await _repo.getQuestions(
      categoryId: event.categoryId,
      amount: event.amount,
      difficulty: event.difficulty,
      type: event.type,
    );

    result.match((failure) => emit(QuizState.error(message: failure.message)), (
      questions,
    ) {
      emit(QuizState.loaded(questions: questions));
    });
  }

  Future<void> _onAnswer(AnswerQuestion event, Emitter<QuizState> emit) async {
    final state = this.state;
    if (state is QuizLoaded) {
      final isCorrect =
          event.answer == state.questions[state.currentIndex].correctAnswer;
      final nextCorrect =
          isCorrect ? state.correctCount + 1 : state.correctCount;
      final nextIndex = state.currentIndex + 1;

      emit(
        QuizState.answerResult(
          questions: state.questions,
          currentIndex: state.currentIndex,
          correctCount: state.correctCount,
          isCorrect: isCorrect,
        ),
      );

      await Future.delayed(const Duration(seconds: 1));

      if (nextIndex < state.questions.length) {
        emit(
          QuizState.loaded(
            questions: state.questions,
            currentIndex: nextIndex,
            correctCount: nextCorrect,
          ),
        );
      } else {
        emit(
          QuizState.completed(
            total: state.questions.length,
            correct: nextCorrect,
          ),
        );
      }
    }
  }

  void _onReset(ResetQuiz event, Emitter<QuizState> emit) {
    emit(const QuizState.initial());
  }
}
