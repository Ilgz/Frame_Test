import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:trivia/core/constants/app_contants.dart';
import 'package:trivia/core/error/exception.dart';
import 'package:trivia/features/categories/data/models/category_model.dart';
import 'package:trivia/features/quiz/data/models/question_model.dart';

@lazySingleton
class TriviaApiService {
  final Dio _dio;
  final Logger _logger;

  TriviaApiService(this._dio, this._logger);

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      _logger.i('Fetching categories from API');
      final response = await _dio.get('api_category.php');
      final data = response.data['trivia_categories'] as List<dynamic>;
      return data
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      _logger.e('DioError in fetchCategories', error: e);
      throw ServerException(message: e.message!);
    } catch (e, st) {
      _logger.e('Unknown error in fetchCategories', error: e, stackTrace: st);
      throw ServerException(message: e.toString());
    }
  }

  Future<List<QuestionModel>> fetchQuestions({
    required int categoryId,
    int amount = AppConstants.defaultQuestionCount,
    String difficulty = AppConstants.defaultDifficulty,
    String type = AppConstants.defaultType,
  }) async {
    try {
      _logger.i(
        'Fetching $amount questions for category $categoryId, diff=$difficulty, type=$type',
      );
      final response = await _dio.get(
        'api.php',
        queryParameters: {
          'amount': amount,
          'category': categoryId,
          'difficulty': difficulty,
          'type': type,
        },
      );
      final results = response.data['results'] as List<dynamic>;
      return results
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      _logger.e('DioError in fetchQuestions', error: e);
      throw ServerException(message: e.message!);
    } catch (e, st) {
      _logger.e('Unknown error in fetchQuestions', error: e, stackTrace: st);
      throw ServerException(message: e.toString());
    }
  }
}
