import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(251, 244, 243, 243),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 28.0,
      ),
    );
  }
}
