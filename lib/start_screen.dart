import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/image/quiz-logo.png',
            color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the Right Way!',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontStyle: FontStyle.normal),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Start Quiz',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontStyle: FontStyle.normal),
            ),
          ),
        ),
      ],
    );
  }
}
