import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[800],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black45,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1 ;

void changeDiceface(){
  setState(() {
    leftDiceNumber = Random().nextInt(6) + 1 ;
    rightDiceNumber = Random().nextInt(6) + 1;
    print('diceNumber = $leftDiceNumber');
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child:TextButton(
                 onPressed: (){
                  changeDiceface();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ) ,
            Expanded(
              child:TextButton(
                onPressed: (){
                  changeDiceface();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


