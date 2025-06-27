// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    _QuestionModel(
      question: json['question'] as String,
      correctAnswer: json['correct_answer'] as String,
      incorrectAnswers:
          (json['incorrect_answers'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      categoryName: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
    );

Map<String, dynamic> _$QuestionModelToJson(_QuestionModel instance) =>
    <String, dynamic>{
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
      'category': instance.categoryName,
      'type': instance.type,
      'difficulty': instance.difficulty,
    };
