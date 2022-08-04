// ignore_for_file: avoid_print, camel_case_types

import 'package:assignment1/Colors.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:assignment1/answer.dart';
import 'package:assignment1/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment1());
}

class Assignment1 extends StatelessWidget {
  const Assignment1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: assignment1(),
    );
  }
}

// ignore: camel_case_types, use_key_in_widget_constructors
class assignment1 extends StatefulWidget {
  @override
  _assignment1State createState() => _assignment1State();
}

class _assignment1State extends State<assignment1> {
  final questions = const [
    {
      'question': 'Who is the father of Computer?',
      'answer': [
        'Charles Babbage',
        'Charli Puth',
        'Neil Armstrong',
        'James Bond'
      ]
    },
    {
      'question': '1 Terabyte (Tb) =',
      'answer': ['1,024', '1000', '1200', '1275']
    },
    {
      'question':
          "Which among the following period is known as the era of second generation computer?",
      'answer': ['1951 to 1959', '1959 to 1965', '1971 to 1979', '1981 to 1991']
    },
    {
      'question':
          "If you need to paste the contents of MS Word, which command will you give?",
      'answer': ['Ctrl + A,', 'Ctrl + C', 'Ctrl + V', 'Ctrl + Z'],
    },
    {
      'question': "Who was the first programmer?",
      'answer': ['Lady Ada', 'Madam Curie', 'James Bond', 'Graham Bell'],
    },
    {
      'question': "Flutter is develop by which company?",
      'answer': ['Google', 'AWS', 'CRED', 'Meta']
    },
  ];
  //======================================================================================================================
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const GlowText(" Computer's Basic Quiz"),
          centerTitle: true,
          backgroundColor: backGround,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Questions(
                questions[_questionIndex]['question'] as String,
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ));
  }
}
