import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Bola Mágica'),
          backgroundColor: Colors.blueGrey,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var texts = ['YES', 'NO', 'ASK AGAIN LATER', 'THE ANSWER IS YES', 'I HAVE NO IDEA'];
  int ballNumber = 1;
  int textNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: FlatButton(
              onPressed: (){
                randomBallNumber();
                print('o botão da esquerdo foi clicado');
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
                texts[textNumber],
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void randomBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      textNumber = ballNumber - 1;
    });

  }
}
