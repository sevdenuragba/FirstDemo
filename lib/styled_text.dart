import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        color: Color.fromARGB(255, 10, 10, 98),
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
