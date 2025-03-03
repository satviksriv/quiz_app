import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/results_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activePage = 'home-page';

  void switchPage() {
    setState(() {
      activePage = 'questions-page';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activePage = 'results-page';
      });
    }
  }

  @override
  Widget build(context) {
    Widget currentPage = HomePage(switchPage);

    if (activePage == 'questions-page') {
      currentPage = QuestionsPage(onSelectAnswer: chooseAnswer);
    }

    if (activePage == 'results-page') {
      currentPage = ResultsPage(chosenAnswers: selectedAnswers);
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
