import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body:const Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image(image: AssetImage('images/dice$leftDice.png')),
            onPressed: () {
                print('I  got clicked');
              
            },
          )),
          Expanded(
              child: TextButton(
            child: Image(image: AssetImage('images/dice$rightDice.png')),
            onPressed: () {
                print('I  got clicked');
            },
          )),
        ],
      ),
    );
  }
}
