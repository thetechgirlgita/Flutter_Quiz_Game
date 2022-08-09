import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'Colors.dart';
import 'FinalPage.dart';
import 'main.dart';

class ScoreList extends StatelessWidget {

  // const scoreList({Key? key}) : super(key: key);
  final int resultScore;
  ScoreList(this.resultScore);

  String get SomeText {

    var ResultText;
    if (resultScore <= 8) {
      ResultText = 'You did awesome at this quiz';
    }
    else if(resultScore >= 0)
    {
      ResultText = 'Dude, You need to study, It is very bad';
    }
    else if (
    resultScore <= 3 || resultScore >= 1
    ){
      ResultText = 'Better Next time dude';
    }
    return ResultText;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Align(
          alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

              Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                          color: backGround,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [

                            BoxShadow(
                                offset: Offset(-1, -1),
                                spreadRadius: 2,
                                blurRadius: 6)
                          ]),
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 14),
                          child:  GlowText(
                            ('$resultScore'+' / 10'),
                            style: const TextStyle(
                              fontSize: 38,
                              color: Colors.amber,
                            ),
                            textAlign: TextAlign.center,
                          )
                      )


            ),

            finalPage(resultScore,  SomeText )

              ],
            )),

    );

  }
}



