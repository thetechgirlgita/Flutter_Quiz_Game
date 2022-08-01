// ignore_for_file: avoid_print, camel_case_types

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

  var _questionIndex = 0;
  void _answerQuestion (){
    setState(() {

      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

   }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is the father of Computer?',
      "Who was the first man landed on moon?",
      "Who was the first programmer?",
      "Flutter is developed by which company?",
    ];



    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment 1"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Questions(
              questions[_questionIndex]
            ),

            //    ----------------------------------------------------------------------//
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    _answerQuestion();
                  },
                  child: const Text("Hi"),
                )),
            Padding(
                padding: const EdgeInsets.only(top : 25),
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    _answerQuestion();
                  },
                  child: const Text("Hi"),
                )),
            Padding(
                padding: const EdgeInsets.only(top : 25),
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),

                  onPressed: () {
                    // ignore: avoid_print
                    _answerQuestion();
                  },
                  child: const Text("Hi"),
                )),
            Padding(
                padding: const EdgeInsets.only(top : 25),
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    // ignore: avoid_print
                    _answerQuestion;
                  },
                  child: const Text("Hi"),
                )),
          ],
        ));
  }
}
