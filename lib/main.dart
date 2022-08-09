// ignore_for_file: avoid_print, camel_case_types

import 'package:assignment1/Colors.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:assignment1/answer.dart';
import 'package:assignment1/question.dart';
import 'package:flutter/material.dart';
import 'score.dart';

void main() {
  runApp(Assignment1());
}

class Assignment1 extends StatelessWidget {
  //const Assignment1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backGround,
      ),
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
        {'text': 'Charles Babbage', 'score': 1},
        {'text': 'Charli Puth', 'score': 0},
        {'text': 'Neil Armstrong', 'score': 0},
        {'text': 'James Bond', 'score': 0}
      ]
    },
    //-----------------------------------------------------------------------------------------------------------------------------------//
    {
      'question': '1 Terabyte (Tb) =',
      'answer': [
        {'text': '1,024', 'score': 1},
        {'text': '1000', 'score': 0},
        {'text': '1200', 'score': 0},
        {'text': '1275', 'score': 0},
      ]
    },
    //-------------------------------------------------------------------------------------------------------------------------------------------//
    {
      'question':
          "Which among the following period is known as the era of second generation computer?",
      'answer': [
        {'text': '1951 to 1959', 'score': 0},
        {'text': '1959 to 1965', 'score': 0},
        {'text': '1971 to 1979', 'score': 0},
        {'text': '1981 to 1991', 'score': 0}
      ]
    },
    //-----------------------------------------------------------------------------------------//
    {
      'question': "IC chips used in computers are usually made of:",
      'answer': [
        {'text': 'Lead', 'score': 0},
        {'text': 'Silicon', 'score': 1},
        {'text': 'Chromium', 'score': 0},
        {'text': 'Gold', 'score': 0}
      ]
    },
    //---------------------------------------------------------------------------------------------------//
    {
      'question': "One Gigabyte is approximately equal is:",
      'answer': [
        {'text': '1000,000 bytes', 'score': 0},
        {'text': '1000,000,000 bytes', 'score': 1},
        {'text': '1000,000,000,000 bytes', 'score': 0},
        {'text': '1248 bytes', 'score': 0}
      ]
    },
    //---------------------------------------------------------------------------------------------------------------------//
    {
      'question':
          "Compact discs, (according to the original CD specifications) hold how many minutes of music?",
      'answer': [
        {'text': '74 mins', 'score': 1},
        {'text': '90 mins', 'score': 0},
        {'text': '56 mins', 'score': 0},
        {'text': '0 mins', 'score': 0}
      ]
    },
    //------------------------------------------------------------------------------------------------------------------------------------------------//
    {
      'question':
          "If you need to paste the contents of MS Word, which command will you give?",
      'answer': [
        {'text': 'Ctrl + A', 'score': 0},
        {'text': 'Ctrl + C', 'score': 0},
        {'text': 'Ctrl + V', 'score': 1},
        {'text': 'Ctrl + Z', 'score': 0},
      ],
    }, //------------------------------------------------------------------------------------------------------------------------------------------------//
    {
      'question': "Which of the following is used to Manage DataBase?",
      'answer': [
        {'text': 'Operating System', 'score': 0},
        {'text': 'Compiler', 'score': 0},
        {'text': 'DBMS', 'score': 1},
        {'text': 'Chrome', 'score': 0},
      ],
    },
    //-------------------------------------------------------------------------------------------------------------------------------------------------//
    {
      'question': "Who was the first programmer?",
      'answer': [
        {'text': 'Lady Ada', 'score': 1},
        {'text': 'Madam Curie', 'score': 0},
        {'text': 'James Bond', 'score': 0},
        {'text': 'Graham Bell', 'score': 0}
      ],
    },
    //-------------------------------------------------------------------------------------------------------------------------------------------------//
    {
      'question': "Flutter is develop by which company?",
      'answer': [
        {'text': 'Google', 'score': 1},
        {'text': 'AWS', 'score': 0},
        {'text': 'CRED', 'score': 0},
        {'text': 'Meta', 'score': 0},
      ]
    },
  ];
  //======================================================================================================================
  var _questionIndex = 0;

  var totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      totalScore = score + totalScore;
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GlowText(
          "Computer's Basic Quiz",
          style: TextStyle(
            color: Apbar,
          ),
        ),
        centerTitle: true,
        backgroundColor: backGround,
      ),
      body: _questionIndex < questions.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Questions(
                  questions[_questionIndex]['question'] as String,
                ),
                ...(questions[_questionIndex]['answer']
                        as List<Map<String, dynamic>>)
                    .map((answer) {
                  return Answer(() => _answerQuestion(answer['score']),
                      answer['text'] as String, answer['score'] as int);
                }).toList(),
              ],
            )
          : ScoreList(totalScore, resetQuiz),
    );
  }
}
