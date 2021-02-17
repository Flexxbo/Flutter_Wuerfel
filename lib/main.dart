import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 5;
  int rightDice = 2;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDice = random.nextInt(6) + 1;
                    rightDice = random.nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$leftDice.png")),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDice = random.nextInt(6) + 1;
                  leftDice = random.nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
