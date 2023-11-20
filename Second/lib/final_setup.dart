import 'package:first_project/text.dart';
import 'package:flutter/material.dart';

class FinalSetup extends StatelessWidget {
  const FinalSetup({super.key});

  @override
  Widget build(context) {
    return Center(
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
    );
  }
}
