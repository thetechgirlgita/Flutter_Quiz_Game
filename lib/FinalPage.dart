import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'score.dart';
import 'main.dart';
import 'Colors.dart';

class finalPage extends StatelessWidget {
  //const finalPage({Key? key}) : super(key: key);
  final int resultS;
  final String SomeT;
  final VoidCallback resetHandler;

  finalPage(this.resultS, this.SomeT, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GlowText(
        (' You got $resultS out of 10'),
        style: const TextStyle(
          fontSize: 38,
          color: Colors.amber,
        ),
        textAlign: TextAlign.center,
      ),
      GlowText(
        (SomeT),
        style: const TextStyle(
          fontSize: 38,
          color: Colors.amber,
        ),
        textAlign: TextAlign.center,
      ),
      Padding(
          padding: EdgeInsets.only(top: 100),
          child: ElevatedButton(
              onPressed: () {
                resetHandler();
              },
              style: ElevatedButton.styleFrom(
                primary: backGround,
              ),
              child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: backGround,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.amber,
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                          spreadRadius: 1.5,
                        ),
                        BoxShadow(
                            offset: Offset(-4, -4),
                            spreadRadius: 1.5,
                            blurRadius: 10)
                      ]),
                  child: const Align(
                      alignment: Alignment.center,
                      child: GlowText(
                        ('Play Again!!!!'),
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.amber,
                        ),
                        textAlign: TextAlign.center,
                      )))))
    ]);
  }
}
