import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 29, 5, 97),
            Color.fromARGB(255, 60, 11, 196),
            Color.fromARGB(255, 95, 39, 249)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Color.fromARGB(251, 244, 243, 243),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }
}
