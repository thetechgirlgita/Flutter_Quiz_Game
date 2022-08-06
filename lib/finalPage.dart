import 'package:flutter/material.dart';



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

            width: MediaQuery.of(context).size.width/1.6,
            height: MediaQuery.of(context).size.height/3.5,
            decoration:  BoxDecoration(
              color: Colors.white,
            ),
            child: const Text("Score",
              style: TextStyle(
                fontSize: 50,
                color: Colors.yellowAccent,
              ),)
            )
          )
        ],
      )


    );
  }
}
