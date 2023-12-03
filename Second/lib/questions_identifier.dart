import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.questionIndex, this.isCorrectAnswer,
      {super.key});
  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    final indexNumber = questionIndex + 1;
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(100),
        color: isCorrectAnswer
            ? Colors.blue
            : const Color.fromARGB(255, 170, 62, 98),
      ),
      child: Text(
        indexNumber.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
