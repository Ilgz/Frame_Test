import 'package:drift/drift.dart';
import 'package:trivia/features/categories/data/local/category_tables.dart';
import 'package:trivia/features/data/local/cache_tables.dart';
import 'package:trivia/features/quiz/data/local/question_tables.dart';

part 'app_db.g.dart';

@DriftDatabase(tables: [Categories, Questions, CacheEntries])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  Future<List<Category>> getAllCategories() => select(categories).get();
  Future<void> upsertCategories(List<CategoriesCompanion> cs) =>
      batch((b) => b.insertAllOnConflictUpdate(categories, cs));

  Future<List<Question>> getQuestionsByCategory(int catId) =>
      (select(questions)..where((q) => q.categoryId.equals(catId))).get();
  Future<void> upsertQuestions(List<QuestionsCompanion> qs) =>
      batch((b) => b.insertAllOnConflictUpdate(questions, qs));

  Future<CacheEntry?> getCacheEntry(String key) =>
      (select(cacheEntries)..where((t) => t.key.equals(key))).getSingleOrNull();
  Future<void> upsertCacheEntry(CacheEntriesCompanion ce) =>
      into(cacheEntries).insertOnConflictUpdate(ce);
  Future<void> deleteCacheEntry(String key) =>
      (delete(cacheEntries)..where((t) => t.key.equals(key))).go();
}
