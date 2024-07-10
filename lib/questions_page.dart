import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() {
    return _QuestionsPageState();
  }
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Question",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
