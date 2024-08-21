import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceValue = 1;
  void rollDice() {
    setState(() {
      diceValue = randomizer.nextInt(6) + 1; //0->5 + 1== 1->6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assests/dice-images/dice-$diceValue.png', width: 200),
        // const SizedBox(
        //   height: 200,
        // ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
            foregroundColor: const Color.fromARGB(255, 245, 245, 245),
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll a Dice'),
        ),
      ],
    );
  }
}
