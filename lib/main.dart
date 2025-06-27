import 'package:flutter/material.dart';
import 'package:trivia/app.dart';
import 'package:trivia/core/di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
