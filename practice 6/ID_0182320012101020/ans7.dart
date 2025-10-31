import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("\nQuestion ${i + 1}: ${q.questionText}");
      for (int j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      stdout.write("Enter your answer (1-${q.options.length}): ");
      int? answer = int.tryParse(stdin.readLineSync()!);

      if (answer == q.correctAnswer) {
        print("Correct!");
        score++;
      } else {
        print("Wrong! Correct answer is ${q.correctAnswer}");
      }
    }

    print("\n Quiz Finished! Your Score: $score / ${questions.length}");
  }
}

void main() {
  List<Question> questionList = [
    Question("What is the capital of France?", ["Berlin", "Paris", "Rome", "Madrid"], 2),
    Question("Which language is used for Flutter?", ["Python", "C++", "Dart", "Java"], 3),
    Question("2 + 2 = ?", ["3", "4", "5", "6"], 2),
  ];

  Quiz quiz = Quiz(questionList);
  quiz.start();
}
