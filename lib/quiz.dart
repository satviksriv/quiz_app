import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activePage = 'home-page';

  void switchPage() {
    setState(() {
      activePage = 'questions-page';
    });
  }

  @override
  Widget build(context) {
    Widget currentPage = HomePage(switchPage);

    if (activePage == 'questions-page') {
      currentPage = const QuestionsPage();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 59, 10, 145),
                Color.fromARGB(255, 88, 51, 153)
              ],
            ),
          ),
          child: currentPage,
        ),
      ),
    );
  }
}
