// import 'package:first_project/text.dart';
import 'package:flutter/material.dart';
// import 'package:first_project/final_setup.dart';
// import 'package:first_project/questions_screen.dart';
// import 'package:first_project/quiz.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      this.currentScreen, this.color_1, this.color_2, this.color_3,
      {super.key});

  final Color color_1;
  final Color color_2;
  final Color color_3;
  final Function() currentScreen;

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
      child: currentScreen(),
    );
  }
}
