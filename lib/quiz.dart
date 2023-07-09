import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String currentScreen = 'start_screen';

  void startQuiz() {
    setState(() {
      currentScreen = 'questions_screen';
    });
  }

  void selectAnswer(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = 'results_screen';
      });
    }
  }

  void restartQuiz() {
    selectedAnswers.clear();
    setState(() {
      currentScreen = 'start_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(startQuiz);
    if (currentScreen == 'questions_screen') {
      screenWidget = QuestionScreen(selectAnswer);
    } else if (currentScreen == 'results_screen') {
      screenWidget = ResultsScreen(
        selectedAnswers: selectedAnswers,
        restartQuiz: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 58, 8, 79),
                Color.fromARGB(255, 131, 33, 172),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
