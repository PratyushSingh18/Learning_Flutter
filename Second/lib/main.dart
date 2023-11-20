import 'package:flutter/material.dart';
import 'package:first_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromRGBO(7, 70, 121, 1),
            Color.fromARGB(255, 48, 133, 159),
            Color.fromARGB(255, 56, 165, 112)),
      ),
    ),
  );
}
