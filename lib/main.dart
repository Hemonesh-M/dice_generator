import 'package:flutter/material.dart';
import 'package:dice_generator/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Dice Generator'),
        ),
        body: const GradientContainer(
          Color.fromARGB(255, 40, 4, 133),
          Color.fromARGB(255, 69, 7, 98),
        ),
      ),
    ),
  );
}
