import 'package:flutter/material.dart';
import 'package:flutter_application_2/style.dart';
import 'dart:math';

class DiceROller extends StatefulWidget {
  const DiceROller({super.key});

  @override
  State<DiceROller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceROller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        TextButton(
          onPressed: rollDice,
          child: StyleText("Roll Dice"),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 200)),
        Center(
          child: Image.asset(
            activeDiceImage,
            width: 200,
          ),
        ),
      ],
    );
  }
}
