import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  
  @override
  Widget build(context) {
    return const Text(
      "HEY\nHEY\nHEY",
      style: TextStyle(
        fontStyle: FontStyle.normal,
        color: Color.fromARGB(255, 10, 10, 98),
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
