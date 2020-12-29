import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  int leftrolldice = 1;
  int rightrolldice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Function();
              },
              child: Image.asset('images/dice$leftrolldice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                Function();
              },
              child: Image.asset('images/dice$rightrolldice.png'),
            ),
          ),
        ],
      ),
    );
  }

  void Function() {
    setState(() {
      leftrolldice = Random().nextInt(6) + 1;
      rightrolldice = Random().nextInt(6) + 1;
    });
  }
}
