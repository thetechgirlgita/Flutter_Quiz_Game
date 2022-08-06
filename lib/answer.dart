import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answers;

  Answer(this.selectHandler, this.answers);

  //Answer(this.answerIn);

  @override
  Widget build(BuildContext context) {
    return
        //width: double.infinity,

        Padding(
      padding: EdgeInsets.only(top: 20),

      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.transparent),
          child: Text(answers),
          onPressed: () {
            print (selectHandler);
         selectHandler();

          },
        ),
      ),
      //selectHandler(),
    );
  }
}
