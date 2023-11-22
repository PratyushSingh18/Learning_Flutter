import 'package:first_project/text.dart';
import 'package:flutter/material.dart';

class FinalSetup extends StatelessWidget {
  const FinalSetup(this.switchScreen, {super.key});

  final Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 250.0,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250.0,
            color: const Color.fromARGB(132, 255, 255,
                255), //This can be also used to make the image transparent rather then the opacity widget
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
          ElevatedButton.icon(
            onPressed: switchScreen,
            style: TextButton.styleFrom(backgroundColor: Colors.cyan),
            label: const TextContent('-Start Quiz-'),
            icon: const Icon(
              Icons.zoom_in_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
