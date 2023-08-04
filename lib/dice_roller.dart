import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll  = randomizer.nextInt(6) + 1;
    });
    // ignore: avoid_print
    print('Dice rolled.');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 240),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 10, 10, 98),
            textStyle: const TextStyle(
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 10, 10, 98),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
