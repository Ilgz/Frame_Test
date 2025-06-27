import 'package:drift/drift.dart';

class Questions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer()();
  TextColumn get questionText => text().named('question')();
  TextColumn get correctAnswer => text()();
  TextColumn get incorrectAnswersJson => text().named('incorrect_answers')();
}
