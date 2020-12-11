import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          elevation: 10,
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  int rightDiceNumber = 2;
  void changenumbers() {
    leftDiceNumber = Random.secure().nextInt(6) + 1;
    rightDiceNumber = Random.secure().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(
                      () {
                        changenumbers();
                      },
                    );
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        changenumbers();
                      },
                    );
                  },
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
