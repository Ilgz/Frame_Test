import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trivia/features/categories/domain/entities/category.dart';
import 'package:trivia/features/categories/domain/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_state.dart';
part 'category_event.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoriesRepository _repo;

  CategoryBloc(this._repo) : super(const CategoryState.initial()) {
    on<LoadCategories>(_onLoad);
  }

  Future<void> _onLoad(
    LoadCategories event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    final result = await _repo.getCategories();
    result.match(
      (failure) => emit(CategoryState.error(message: failure.message)),
      (cats) => emit(CategoryState.loaded(categories: cats)),
    );
  }
}
