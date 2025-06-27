import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:trivia/features/quiz/domain/entities/quiz.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
abstract class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'correct_answer') required String correctAnswer,
    @JsonKey(name: 'incorrect_answers') required List<String> incorrectAnswers,
    @JsonKey(name: 'category') required String categoryName,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'difficulty') required String difficulty,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

extension QuestionModelX on QuestionModel {
  Question toEntity(int id, int categoryId) {
    final all = List<String>.from(incorrectAnswers)..add(correctAnswer);
    all.shuffle();
    return Question(
      id: id,
      categoryId: categoryId,
      question: htmlUnescape(question),
      correctAnswer: htmlUnescape(correctAnswer),
      allAnswers: all.map(htmlUnescape).toList(),
    );
  }
}

String htmlUnescape(String input) => HtmlUnescape().convert(input);
