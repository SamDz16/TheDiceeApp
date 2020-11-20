import 'package:flutter/material.dart';

// In order to enable using the hexadecimal colors in flutter
import 'package:hexcolor/hexcolor.dart';

// Import the Math library
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#03A9F4"),
        appBar: AppBar(
          title: Center(child: Text("Dicee")),
          backgroundColor: HexColor("#0288D1"),
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
  int leftDice = 1;
  int rightDice = 1;

  int getNum() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = getNum();
                  });
                },
                child: Image.asset("images/dice$leftDice.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDice = getNum();
                  });
                },
                child: Image.asset("images/dice$rightDice.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
