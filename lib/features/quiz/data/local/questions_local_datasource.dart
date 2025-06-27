import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:trivia/core/error/exception.dart';
import 'package:trivia/features/data/local/app_db.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart' as domain;

@lazySingleton
class QuestionsLocalDataSource {
  final AppDatabase _db;
  QuestionsLocalDataSource(this._db);

  Future<List<domain.Question>> fetchQuestionsByCategory(int categoryId) async {
    try {
      final rows = await _db.getQuestionsByCategory(categoryId);

      return rows.map((r) {
        final incorrect = List<String>.from(jsonDecode(r.incorrectAnswersJson));

        final answers = [...incorrect, r.correctAnswer]..shuffle();

        return domain.Question(
          id: r.id,
          categoryId: r.categoryId,
          question: r.questionText,
          correctAnswer: r.correctAnswer,
          allAnswers: answers,
        );
      }).toList();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> cacheQuestions(
    int categoryId,
    List<domain.Question> list,
  ) async {
    try {
      final companions =
          list.map((q) {
            final incorrect =
                q.allAnswers.where((a) => a != q.correctAnswer).toList();

            return QuestionsCompanion.insert(
              categoryId: q.categoryId,
              questionText: q.question,
              correctAnswer: q.correctAnswer,
              incorrectAnswersJson: jsonEncode(incorrect),
            );
          }).toList();

      await _db.upsertQuestions(companions);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
