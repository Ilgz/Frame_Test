import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:trivia/features/categories/presentation/screens/categories_screen.dart';
import 'package:trivia/features/quiz/presentation/screens/quiz_screen.dart';
import 'package:trivia/features/quiz/presentation/screens/result_screen.dart';

import '../features/categories/domain/entities/category.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'categories',
      builder: (context, state) => const CategoriesScreen(),
    ),

    GoRoute(
      path: '/quiz',
      name: 'quiz',
      builder: (context, state) {
        final category = state.extra as Category;
        return QuizScreen(category: category);
      },
    ),

    GoRoute(
      path: '/result',
      name: 'result',
      builder: (context, state) {
        final args = state.extra as Map<String, int>;
        return ResultScreen(total: args['total']!, correct: args['correct']!);
      },
    ),
  ],

  errorBuilder:
      (context, state) =>
          Scaffold(body: Center(child: Text(state.error.toString()))),
);
