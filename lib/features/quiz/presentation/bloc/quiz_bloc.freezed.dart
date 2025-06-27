// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState()';
}


}

/// @nodoc
class $QuizStateCopyWith<$Res>  {
$QuizStateCopyWith(QuizState _, $Res Function(QuizState) __);
}


/// @nodoc


class QuizInitial implements QuizState {
  const QuizInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState.initial()';
}


}




/// @nodoc


class QuizLoading implements QuizState {
  const QuizLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState.loading()';
}


}




/// @nodoc


class QuizLoaded implements QuizState {
  const QuizLoaded({required final  List<Question> questions, this.currentIndex = 0, this.correctCount = 0}): _questions = questions;
  

 final  List<Question> _questions;
 List<Question> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

@JsonKey() final  int currentIndex;
@JsonKey() final  int correctCount;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizLoadedCopyWith<QuizLoaded> get copyWith => _$QuizLoadedCopyWithImpl<QuizLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizLoaded&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),currentIndex,correctCount);

@override
String toString() {
  return 'QuizState.loaded(questions: $questions, currentIndex: $currentIndex, correctCount: $correctCount)';
}


}

/// @nodoc
abstract mixin class $QuizLoadedCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory $QuizLoadedCopyWith(QuizLoaded value, $Res Function(QuizLoaded) _then) = _$QuizLoadedCopyWithImpl;
@useResult
$Res call({
 List<Question> questions, int currentIndex, int correctCount
});




}
/// @nodoc
class _$QuizLoadedCopyWithImpl<$Res>
    implements $QuizLoadedCopyWith<$Res> {
  _$QuizLoadedCopyWithImpl(this._self, this._then);

  final QuizLoaded _self;
  final $Res Function(QuizLoaded) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? currentIndex = null,Object? correctCount = null,}) {
  return _then(QuizLoaded(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class QuizAnswerResult implements QuizState {
  const QuizAnswerResult({required final  List<Question> questions, required this.currentIndex, required this.correctCount, required this.isCorrect}): _questions = questions;
  

 final  List<Question> _questions;
 List<Question> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  int currentIndex;
 final  int correctCount;
 final  bool isCorrect;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAnswerResultCopyWith<QuizAnswerResult> get copyWith => _$QuizAnswerResultCopyWithImpl<QuizAnswerResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAnswerResult&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),currentIndex,correctCount,isCorrect);

@override
String toString() {
  return 'QuizState.answerResult(questions: $questions, currentIndex: $currentIndex, correctCount: $correctCount, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $QuizAnswerResultCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory $QuizAnswerResultCopyWith(QuizAnswerResult value, $Res Function(QuizAnswerResult) _then) = _$QuizAnswerResultCopyWithImpl;
@useResult
$Res call({
 List<Question> questions, int currentIndex, int correctCount, bool isCorrect
});




}
/// @nodoc
class _$QuizAnswerResultCopyWithImpl<$Res>
    implements $QuizAnswerResultCopyWith<$Res> {
  _$QuizAnswerResultCopyWithImpl(this._self, this._then);

  final QuizAnswerResult _self;
  final $Res Function(QuizAnswerResult) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? currentIndex = null,Object? correctCount = null,Object? isCorrect = null,}) {
  return _then(QuizAnswerResult(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class QuizCompleted implements QuizState {
  const QuizCompleted({required this.total, required this.correct});
  

 final  int total;
 final  int correct;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizCompletedCopyWith<QuizCompleted> get copyWith => _$QuizCompletedCopyWithImpl<QuizCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizCompleted&&(identical(other.total, total) || other.total == total)&&(identical(other.correct, correct) || other.correct == correct));
}


@override
int get hashCode => Object.hash(runtimeType,total,correct);

@override
String toString() {
  return 'QuizState.completed(total: $total, correct: $correct)';
}


}

/// @nodoc
abstract mixin class $QuizCompletedCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory $QuizCompletedCopyWith(QuizCompleted value, $Res Function(QuizCompleted) _then) = _$QuizCompletedCopyWithImpl;
@useResult
$Res call({
 int total, int correct
});




}
/// @nodoc
class _$QuizCompletedCopyWithImpl<$Res>
    implements $QuizCompletedCopyWith<$Res> {
  _$QuizCompletedCopyWithImpl(this._self, this._then);

  final QuizCompleted _self;
  final $Res Function(QuizCompleted) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? total = null,Object? correct = null,}) {
  return _then(QuizCompleted(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class QuizError implements QuizState {
  const QuizError({required this.message});
  

 final  String message;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizErrorCopyWith<QuizError> get copyWith => _$QuizErrorCopyWithImpl<QuizError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QuizState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $QuizErrorCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory $QuizErrorCopyWith(QuizError value, $Res Function(QuizError) _then) = _$QuizErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QuizErrorCopyWithImpl<$Res>
    implements $QuizErrorCopyWith<$Res> {
  _$QuizErrorCopyWithImpl(this._self, this._then);

  final QuizError _self;
  final $Res Function(QuizError) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(QuizError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$QuizEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizEvent()';
}


}

/// @nodoc
class $QuizEventCopyWith<$Res>  {
$QuizEventCopyWith(QuizEvent _, $Res Function(QuizEvent) __);
}


/// @nodoc


class LoadQuiz implements QuizEvent {
  const LoadQuiz({required this.categoryId, this.amount = 10, this.difficulty, this.type});
  

 final  int categoryId;
@JsonKey() final  int amount;
 final  String? difficulty;
 final  String? type;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadQuizCopyWith<LoadQuiz> get copyWith => _$LoadQuizCopyWithImpl<LoadQuiz>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadQuiz&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,amount,difficulty,type);

@override
String toString() {
  return 'QuizEvent.load(categoryId: $categoryId, amount: $amount, difficulty: $difficulty, type: $type)';
}


}

/// @nodoc
abstract mixin class $LoadQuizCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory $LoadQuizCopyWith(LoadQuiz value, $Res Function(LoadQuiz) _then) = _$LoadQuizCopyWithImpl;
@useResult
$Res call({
 int categoryId, int amount, String? difficulty, String? type
});




}
/// @nodoc
class _$LoadQuizCopyWithImpl<$Res>
    implements $LoadQuizCopyWith<$Res> {
  _$LoadQuizCopyWithImpl(this._self, this._then);

  final LoadQuiz _self;
  final $Res Function(LoadQuiz) _then;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? amount = null,Object? difficulty = freezed,Object? type = freezed,}) {
  return _then(LoadQuiz(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AnswerQuestion implements QuizEvent {
  const AnswerQuestion(this.answer);
  

 final  String answer;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerQuestionCopyWith<AnswerQuestion> get copyWith => _$AnswerQuestionCopyWithImpl<AnswerQuestion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerQuestion&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'QuizEvent.answer(answer: $answer)';
}


}

/// @nodoc
abstract mixin class $AnswerQuestionCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory $AnswerQuestionCopyWith(AnswerQuestion value, $Res Function(AnswerQuestion) _then) = _$AnswerQuestionCopyWithImpl;
@useResult
$Res call({
 String answer
});




}
/// @nodoc
class _$AnswerQuestionCopyWithImpl<$Res>
    implements $AnswerQuestionCopyWith<$Res> {
  _$AnswerQuestionCopyWithImpl(this._self, this._then);

  final AnswerQuestion _self;
  final $Res Function(AnswerQuestion) _then;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answer = null,}) {
  return _then(AnswerQuestion(
null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetQuiz implements QuizEvent {
  const ResetQuiz();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetQuiz);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizEvent.reset()';
}


}




// dart format on
