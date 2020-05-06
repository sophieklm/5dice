import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('5 Dice'),
          ),
          backgroundColor: Colors.teal,
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
  int topLeftDiceNumber;
  int midLeftDiceNumber;
  int bottomDiceNumber;
  int topRightDiceNumber;
  int midRightDiceNumber;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  topLeftDiceNumber = Random().nextInt(6) + 1;
                  midLeftDiceNumber = Random().nextInt(6) + 1;
                  bottomDiceNumber = Random().nextInt(6) + 1;
                  topRightDiceNumber = Random().nextInt(6) + 1;
                  midRightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Text(
                'Roll All',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        topLeftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$topLeftDiceNumber.png',
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        topRightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$topRightDiceNumber.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        midLeftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$midLeftDiceNumber.png',
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        midRightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$midRightDiceNumber.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        bottomDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$bottomDiceNumber.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
