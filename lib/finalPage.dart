import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'Colors.dart';


class finalPage extends StatefulWidget {
  const finalPage({Key? key}) : super(key: key);

  @override
  _finalPageState createState() => _finalPageState();
}

class _finalPageState extends State<finalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
         padding: EdgeInsets.only(top: 50),
          child:
          Container(

            width: MediaQuery.of(context).size.width/1.9,
            height: MediaQuery.of(context).size.height/4.5,
            decoration:  BoxDecoration(
              color: backGround,
              borderRadius:  BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.amber,
                  offset: Offset(-4,-4),
                  blurRadius : 10,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  offset: Offset(-4,-4),
                  spreadRadius: 1,
                  blurRadius: 10
                )
              ]
            ),
            child: Padding(
              padding: EdgeInsets.only(top : MediaQuery.of(context).size.height/14),
            child:
            const GlowText("Score",
              style: TextStyle(
                fontSize: 40,
                color: Colors.amber,
              ),
              textAlign: TextAlign.center,
            )
            )),
          )
        ],
      )


    );
  }
}
