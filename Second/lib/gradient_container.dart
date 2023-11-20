import 'package:first_project/text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color_1, this.color_2, this.color_3,
      {super.key});

  final Color color_1;
  final Color color_2;
  final Color color_3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color_1, color_2, color_3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250.0,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const TextContent(
              'Learn Flutter the Fun Way!!',
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.cyan),
              child: const TextContent('-Start Quiz-'),
            ),
          ],
        ),
      ),
    );
  }
}
