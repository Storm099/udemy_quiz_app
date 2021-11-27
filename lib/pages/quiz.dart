import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/answer.dart';
import 'package:udemy_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  static String id = "quiz_page";

  final Function ?answerQuestion;
  final int ?questionIndex;
  final List<Map<String, dynamic>> ?questions;

  Quiz(
      {this.questions,
      this.questionIndex,
      this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions![questionIndex!]['questionText'].toString()),
        ...(questions![questionIndex!]['answers'] as List).map((answer) {
          return Answer(() => answerQuestion!(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
