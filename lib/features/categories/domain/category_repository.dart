import 'package:fpdart/fpdart.dart';
import 'package:trivia/core/error/failure.dart';
import 'package:trivia/features/categories/domain/entities/category.dart';

abstract class CategoriesRepository {
  Future<TaskEither<Failure, List<Category>>> getCategories();
}