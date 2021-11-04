import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(title: Text("Magic 8 ball pool"),backgroundColor: Colors.blueGrey,
          ),
          body: Magic8Ball(),
        )
      ),
    );
class Magic8Ball extends StatefulWidget {

  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int BallNumber = Random().nextInt(5) + 1;
  void ChangeBallNumber(){
    setState(() {
      BallNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child: FlatButton(
        onPressed: (){ChangeBallNumber();},
        child: Image.asset('images/ball$BallNumber.png'),
      ),
    ),);
  }
}
