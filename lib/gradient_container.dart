import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  final Color color1;
  final Color color2;
  final Color color3;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
            color3,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-3.png', width: 240),
            const SizedBox(height: 25,),
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
        ),
      ),
    );
  }
}
