import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Colors.dart';

class Questions extends StatelessWidget {
  final String QuestionText;

  Questions(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGround,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(children: [
        Text(
         QuestionText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Apbar,
          ),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
