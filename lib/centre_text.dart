import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CentreText extends StatelessWidget {
  const CentreText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 3, 35, 241),
          fontSize: 60,
          //backgroundColor: Color.fromARGB(255, 69, 7, 98)
        ),
        textScaler: const TextScaler.linear(0.75),
      ),
    );
  }
}
