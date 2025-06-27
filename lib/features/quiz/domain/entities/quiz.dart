class Question {
  final int id;
  final int categoryId;
  final String question;
  final String correctAnswer;
  final List<String> allAnswers;

  Question({
    required this.id,
    required this.categoryId,
    required this.question,
    required this.correctAnswer,
    required this.allAnswers,
  });
}
