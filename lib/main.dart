import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 219, 9, 62),
          Color.fromARGB(255, 187, 9, 148),
          Color.fromARGB(255, 208, 63, 236),
        ),
      ),
    ),
  );
}
