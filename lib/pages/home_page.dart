import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/answer.dart';
import 'package:udemy_quiz_app/pages/quiz.dart';
import 'package:udemy_quiz_app/pages/result.dart';
import 'package:udemy_quiz_app/question.dart';

class HomePage extends StatefulWidget {
  static String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int totalScore = 0;
  int _questionIndex = 0;

  void _restartQuiz(){
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score){
    totalScore +=score;
    setState(() {
      _questionIndex++;
    });
    print("Answer choosen!");
    print(_questionIndex);
  }

  final _questions = [
    {
      "questionText":"What's your favourite color?",
      "answers":[
        {'text':'black','score':10},
        {'text':'red','score':5},
        {'text':'green','score':3},
        {'text':'yellow','score':1}
      ]
    },
    {
      "questionText":"What's your favourite car?",
      "answers":[
        {'text':'bmw','score':10},
        {'text':'mers','score':5},
        {'text':'toyota','score':3},
        {'text':'ravon','score':1}
      ]
    },
    {
      "questionText":"What's your favourite phone?",
      "answers":[
        {'text':'i phone','score':10},
        {'text':'samsung','score':5},
        {'text':'redmi','score':3},
        {'text':'vivo','score':1}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Center(
        child: _questionIndex < _questions.length?
            Quiz(questions: _questions, questionIndex: _questionIndex, answerQuestion: _answerQuestion)
            :  Result(resultScore: totalScore,restartHandler: _restartQuiz,)
      ),
    );
  }
}
