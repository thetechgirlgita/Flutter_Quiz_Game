import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String QuestionText;

Questions(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child:
      Text(QuestionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      )
    );
  }
}

