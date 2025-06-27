import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivia/features/categories/domain/entities/category.dart';
import 'package:trivia/features/categories/presentation/bloc/category_bloc.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CategoryBloc>().add(const CategoryEvent.load());

    return Scaffold(
      appBar: AppBar(title: const Text('Категории')),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return switch (state) {
            CategoryInitial() => const SizedBox(),
            CategoryLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            CategoryLoaded(:final categories) => ListView.builder(
              itemCount: categories.length,
              itemBuilder:
                  (ctx, i) => _CategoryItem(
                    category: categories[i],
                    onTap: () => context.goNamed('quiz', extra: categories[i]),
                  ),
            ),
            CategoryError(:final message) => Center(
              child: Text('Ошибка: $message'),
            ),
          };
        },
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const _CategoryItem({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.name),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
