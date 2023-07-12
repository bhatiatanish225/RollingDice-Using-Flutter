import 'package:flutter/material.dart';
import 'package:flutter_application_2/DiceRoller.dart';

// ignore: must_be_immutable
class ColorGradient extends StatelessWidget {
  ColorGradient(this.color, {super.key});
  // ignore: prefer_typing_uninitialized_variables
  List<Color> color;
  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: color,
        ),
      ),
      child: const DiceROller(),
    );
  }
}
