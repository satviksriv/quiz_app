import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80.0,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 228, 225, 225),
              fontSize: 24.0,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
