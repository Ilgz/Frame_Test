import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivia/features/categories/domain/entities/category.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart';
import 'package:trivia/features/quiz/presentation/bloc/quiz_bloc.dart';

class QuizScreen extends StatefulWidget {
  final Category category;
  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    super.initState();
    context.read<QuizBloc>().add(
      QuizEvent.load(categoryId: widget.category.id, amount: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.category.name)),
      body: BlocConsumer<QuizBloc, QuizState>(
        listener: (context, state) {
          if (state is QuizCompleted) {
            context.goNamed(
              'result',
              extra: {'total': state.total, 'correct': state.correct},
            );
          }
        },
        builder: (context, state) {
          return switch (state) {
            QuizInitial() => const SizedBox(),
            QuizLoading() => const Center(child: CircularProgressIndicator()),
            QuizLoaded(:final questions, :final currentIndex) =>
              (() {
                final q = questions[currentIndex];
                return _QuestionView(
                  question: q,
                  onAnswer:
                      (ans) =>
                          context.read<QuizBloc>().add(QuizEvent.answer(ans)),
                );
              })(),
            QuizAnswerResult(:final isCorrect) => Center(
              child: Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                size: 80,
                color: isCorrect ? Colors.green : Colors.red,
              ),
            ),
            QuizError(:final message) => Center(
              child: Text('Ошибка: $message'),
            ),
            QuizCompleted() => const SizedBox(),
          };
        },
      ),
    );
  }
}

class _QuestionView extends StatelessWidget {
  final Question question;
  final void Function(String) onAnswer;

  const _QuestionView({required this.question, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 24),
          ...question.allAnswers.map(
            (ans) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ElevatedButton(
                onPressed: () => onAnswer(ans),
                child: Text(ans),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
