import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trivia/core/error/exception.dart';
import 'package:trivia/core/error/failure.dart';
import 'package:trivia/features/categories/data/local/categories_local_datasource.dart';
import 'package:trivia/features/categories/data/models/category_model.dart';
import 'package:trivia/features/categories/domain/entities/category.dart';
import 'package:trivia/features/categories/domain/category_repository.dart';
import 'package:trivia/features/data/remote/trivia_api_service.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final TriviaApiService _api;
  final CategoriesLocalDataSource _local;

  CategoriesRepositoryImpl(this._api, this._local);

  @override
  Future<TaskEither<Failure, List<Category>>> getCategories() async {
    return TaskEither<Failure, List<Category>>(() async {
      try {
        final remoteModels = await _api.fetchCategories();
        final entities = remoteModels.map((m) => m.toEntity()).toList();

        await _local.cacheCategories(entities);

        return Right(entities);
      } on ServerException catch (e) {
        try {
          final localEntities = await _local.fetchCategories();
          if (localEntities.isNotEmpty) {
            return Right(localEntities);
          }
          return Left(ServerFailure(e.message));
        } on CacheException catch (ce) {
          return Left(CacheFailure(ce.message));
        }
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    });
  }
}
