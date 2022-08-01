// ignore_for_file: avoid_print, camel_case_types

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
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is the father of Computer?',
      "Who was the first man landed on moon?",
      "Who was the first programmer?",
      "Flutter is developed by which company?",
    ];

    var questionIn = 0;
    int questionIndexs() {
      questionIn = questionIn + 1;
      return questionIn;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment 1"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions.first,
              style: const TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            //    ----------------------------------------------------------------------//
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    print("Clicked");
                  },
                  child: const Text("Hi"),
                )),
            Padding(
                padding: const EdgeInsets.only(top : 25),
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    print("Clicked");
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
                    print("Clicked");
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
                    print("Clicked");
                  },
                  child: const Text("Hi"),
                )),
          ],
        ));
  }
}
