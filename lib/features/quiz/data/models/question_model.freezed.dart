// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionModel {

@JsonKey(name: 'question') String get question;@JsonKey(name: 'correct_answer') String get correctAnswer;@JsonKey(name: 'incorrect_answers') List<String> get incorrectAnswers;@JsonKey(name: 'category') String get categoryName;@JsonKey(name: 'type') String get type;@JsonKey(name: 'difficulty') String get difficulty;
/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionModelCopyWith<QuestionModel> get copyWith => _$QuestionModelCopyWithImpl<QuestionModel>(this as QuestionModel, _$identity);

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionModel&&(identical(other.question, question) || other.question == question)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other.incorrectAnswers, incorrectAnswers)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.type, type) || other.type == type)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,correctAnswer,const DeepCollectionEquality().hash(incorrectAnswers),categoryName,type,difficulty);

@override
String toString() {
  return 'QuestionModel(question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, categoryName: $categoryName, type: $type, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuestionModelCopyWith<$Res>  {
  factory $QuestionModelCopyWith(QuestionModel value, $Res Function(QuestionModel) _then) = _$QuestionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'question') String question,@JsonKey(name: 'correct_answer') String correctAnswer,@JsonKey(name: 'incorrect_answers') List<String> incorrectAnswers,@JsonKey(name: 'category') String categoryName,@JsonKey(name: 'type') String type,@JsonKey(name: 'difficulty') String difficulty
});




}
/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._self, this._then);

  final QuestionModel _self;
  final $Res Function(QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? correctAnswer = null,Object? incorrectAnswers = null,Object? categoryName = null,Object? type = null,Object? difficulty = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,incorrectAnswers: null == incorrectAnswers ? _self.incorrectAnswers : incorrectAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _QuestionModel implements QuestionModel {
  const _QuestionModel({@JsonKey(name: 'question') required this.question, @JsonKey(name: 'correct_answer') required this.correctAnswer, @JsonKey(name: 'incorrect_answers') required final  List<String> incorrectAnswers, @JsonKey(name: 'category') required this.categoryName, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'difficulty') required this.difficulty}): _incorrectAnswers = incorrectAnswers;
  factory _QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

@override@JsonKey(name: 'question') final  String question;
@override@JsonKey(name: 'correct_answer') final  String correctAnswer;
 final  List<String> _incorrectAnswers;
@override@JsonKey(name: 'incorrect_answers') List<String> get incorrectAnswers {
  if (_incorrectAnswers is EqualUnmodifiableListView) return _incorrectAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_incorrectAnswers);
}

@override@JsonKey(name: 'category') final  String categoryName;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'difficulty') final  String difficulty;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionModelCopyWith<_QuestionModel> get copyWith => __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionModel&&(identical(other.question, question) || other.question == question)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other._incorrectAnswers, _incorrectAnswers)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.type, type) || other.type == type)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,correctAnswer,const DeepCollectionEquality().hash(_incorrectAnswers),categoryName,type,difficulty);

@override
String toString() {
  return 'QuestionModel(question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, categoryName: $categoryName, type: $type, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuestionModelCopyWith<$Res> implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(_QuestionModel value, $Res Function(_QuestionModel) _then) = __$QuestionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'question') String question,@JsonKey(name: 'correct_answer') String correctAnswer,@JsonKey(name: 'incorrect_answers') List<String> incorrectAnswers,@JsonKey(name: 'category') String categoryName,@JsonKey(name: 'type') String type,@JsonKey(name: 'difficulty') String difficulty
});




}
/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(this._self, this._then);

  final _QuestionModel _self;
  final $Res Function(_QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? correctAnswer = null,Object? incorrectAnswers = null,Object? categoryName = null,Object? type = null,Object? difficulty = null,}) {
  return _then(_QuestionModel(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,incorrectAnswers: null == incorrectAnswers ? _self._incorrectAnswers : incorrectAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
