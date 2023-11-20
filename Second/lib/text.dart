import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
