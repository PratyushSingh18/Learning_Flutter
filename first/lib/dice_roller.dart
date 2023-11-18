import 'package:first/text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//Here we are making a StatefulWidget.

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ), // This is another way of adding gap between two widgets[kind of Padding]
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 10.0,
            //   bottom: 10.0,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20.0,
            ),
          ),
          child: const TextInfo("Roll Dice"),
        ),
      ],
    );
  }
}
