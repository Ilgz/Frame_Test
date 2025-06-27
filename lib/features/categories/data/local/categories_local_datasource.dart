import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:trivia/core/error/exception.dart';
import 'package:trivia/features/data/local/app_db.dart';
import 'package:trivia/features/categories/domain/entities/category.dart'
    as domain;

@lazySingleton
class CategoriesLocalDataSource {
  final AppDatabase _db;
  CategoriesLocalDataSource(this._db);

  Future<List<domain.Category>> fetchCategories() async {
    try {
      final rows = await _db.getAllCategories();
      return rows.map((r) => domain.Category(id: r.id, name: r.name)).toList();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> cacheCategories(List<domain.Category> list) async {
    try {
      final companions =
          list
              .map(
                (c) =>
                    CategoriesCompanion.insert(id: Value(c.id), name: c.name),
              )
              .toList();
      await _db.upsertCategories(companions);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
