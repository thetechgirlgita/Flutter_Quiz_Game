import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answers;
  final int score;

  Answer(this.selectHandler, this.answers, this.score);

  //Answer(this.answerIn);

  @override
  Widget build(BuildContext context) {
    return
        //width: double.infinity,

        Padding(
      padding: EdgeInsets.only(top: 20),

      child: Container(
        width: MediaQuery.of(context).size.width / 6,
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(-1, -1),
                  spreadRadius: 2,
                  blurRadius: 6)
            ]),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.transparent),
          child: Text(answers),
          onPressed: () {
            print(selectHandler);
            selectHandler();
          },
        ),
      ),
      //selectHandler(),
    );
  }
}
