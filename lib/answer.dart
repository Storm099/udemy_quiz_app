import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() selectHandler;
  final String answer;
  Answer(this.selectHandler,this.answer);


  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
        child:  Text(answer.toString()),
      ),
    );
  }
}
