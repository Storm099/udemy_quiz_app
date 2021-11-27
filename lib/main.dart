import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/pages/home_page.dart';
import 'package:udemy_quiz_app/pages/quiz.dart';
import 'package:udemy_quiz_app/pages/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context) => const HomePage(),
        Quiz.id:(context) =>  Quiz(),
        Result.id:(context) =>  Result(),
      },
    );
  }
}

