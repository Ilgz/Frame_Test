import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/features/categories/presentation/bloc/category_bloc.dart';
import 'package:trivia/features/quiz/presentation/bloc/quiz_bloc.dart';
import 'package:trivia/routes/app_router.dart';
import 'core/di/injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryBloc>(create: (_) => getIt<CategoryBloc>()),
        BlocProvider<QuizBloc>(create: (_) => getIt<QuizBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Quiz App',
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: appRouter,
      ),
    );
  }
}
