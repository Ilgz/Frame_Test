import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:trivia/features/data/local/app_db.dart';

@lazySingleton
class CacheService {
  final AppDatabase _db;
  CacheService(this._db);

  Future<void> putList<T>(
    String key,
    List<T> items,
    Map<String, dynamic> Function(T) toJson,
  ) async {
    final jsonList = items.map(toJson).toList();
    final ce = CacheEntriesCompanion.insert(
      key: key,
      jsonValue: jsonEncode(jsonList),
    );
    await _db.upsertCacheEntry(ce);
  }

  Future<List<T>> getList<T>(
    String key,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final row = await _db.getCacheEntry(key);
    if (row == null) return [];
    final List<dynamic> decoded = jsonDecode(row.jsonValue);
    return decoded.cast<Map<String, dynamic>>().map(fromJson).toList();
  }

  Future<void> invalidate(String key) async {
    await _db.deleteCacheEntry(key);
  }
}
