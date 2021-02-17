import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice = 5;
    var rightDice = 2;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("Pressed left button");
                },
                child: Image.asset("images/dice$leftDice.png")),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Pressed right button");
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
