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
    //0->5 + 1== 1->6
    setState(() {
      diceValue = randomizer.nextInt(6) + 1;
    });
  }

  void resetoOne() {
    //0->5 + 1== 1->6
    setState(() {
      diceValue = 1;
    });
  }
  void changeImage(){
    
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
            onTap: rollDice,
            onLongPress: resetoOne,
            child: FadeInImage(
              height: 200,
              placeholder:
                  AssetImage('assests/dice-images/dice-$diceValue.png'),
              image: AssetImage('assests/dice-images/dice-$diceValue.png'),
            )
            // Image.asset(
            //   'assests/dice-images/dice-$diceValue.png',
            //   width: 200,
            //   height: 200,
            // ),
            ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(fontSize: 60),
          ),
          onPressed: rollDice,
          onLongPress: resetoOne,
          child: const Text('Roll a Dice'),
        ),
      ],
    );
  }
}
