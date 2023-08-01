import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer()
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{
  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 219, 9, 62),
                Color.fromARGB(255, 187, 9, 148),
                Color.fromARGB(255, 208, 63, 236)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              "HEY\nHEY\nHEY",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 10, 10, 98),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
