// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../../features/categories/data/local/categories_local_datasource.dart'
    as _i986;
import '../../features/categories/data/repositories/category_repository.dart'
    as _i905;
import '../../features/categories/domain/category_repository.dart' as _i560;
import '../../features/categories/presentation/bloc/category_bloc.dart' as _i80;
import '../../features/data/local/app_db.dart' as _i280;
import '../../features/data/local/cache_service.dart' as _i222;
import '../../features/data/remote/trivia_api_service.dart' as _i866;
import '../../features/quiz/data/local/questions_local_datasource.dart'
    as _i1044;
import '../../features/quiz/data/repositories/quiz_repository.dart' as _i627;
import '../../features/quiz/domain/repositories/quiz_repository.dart' as _i613;
import '../../features/quiz/presentation/bloc/quiz_bloc.dart' as _i505;
import 'modules/database_module.dart' as _i664;
import 'modules/logger_module.dart' as _i205;
import 'modules/network_module.dart' as _i851;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    final networkModule = _$NetworkModule();
    final loggerModule = _$LoggerModule();
    await gh.lazySingletonAsync<_i280.AppDatabase>(
      () => databaseModule.appDatabase,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i222.CacheService>(
      () => _i222.CacheService(gh<_i280.AppDatabase>()),
    );
    gh.lazySingleton<_i1044.QuestionsLocalDataSource>(
      () => _i1044.QuestionsLocalDataSource(gh<_i280.AppDatabase>()),
    );
    gh.lazySingleton<_i986.CategoriesLocalDataSource>(
      () => _i986.CategoriesLocalDataSource(gh<_i280.AppDatabase>()),
    );
    gh.lazySingleton<_i866.TriviaApiService>(
      () => _i866.TriviaApiService(gh<_i361.Dio>(), gh<_i974.Logger>()),
    );
    gh.lazySingleton<_i613.QuizRepository>(
      () => _i627.QuizRepositoryImpl(
        gh<_i866.TriviaApiService>(),
        gh<_i1044.QuestionsLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i560.CategoriesRepository>(
      () => _i905.CategoriesRepositoryImpl(
        gh<_i866.TriviaApiService>(),
        gh<_i986.CategoriesLocalDataSource>(),
      ),
    );
    gh.factory<_i505.QuizBloc>(
      () => _i505.QuizBloc(gh<_i613.QuizRepository>()),
    );
    gh.factory<_i80.CategoryBloc>(
      () => _i80.CategoryBloc(gh<_i560.CategoriesRepository>()),
    );
    return this;
  }
}

class _$DatabaseModule extends _i664.DatabaseModule {}

class _$NetworkModule extends _i851.NetworkModule {}

class _$LoggerModule extends _i205.LoggerModule {}
