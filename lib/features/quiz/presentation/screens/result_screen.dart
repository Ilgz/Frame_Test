import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int total;
  final int correct;

  const ResultScreen({super.key, required this.total, required this.correct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Результат')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Вы ответили правильно на $correct из $total'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Повторить'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('К категориям'),
            ),
          ],
        ),
      ),
    );
  }
}
