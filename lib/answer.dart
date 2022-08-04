import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answers;

  Answer(this.selectHandler, this.answers);

  //Answer(this.answerIn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //width: double.infinity,
      //child:
      ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.pink),
        child: Text(answers),
        onPressed: selectHandler(),
      )]
    );
  }
}

