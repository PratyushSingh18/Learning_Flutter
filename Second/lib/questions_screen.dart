import 'package:first_project/answer_button.dart';
//import 'package:first_project/text.dart';
import 'package:flutter/material.dart';
import 'package:first_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   @override
//   Widget build(context) {
//     return Center(
//       child: Column(
//         //mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const TextContent('Question-1'),
//           const SizedBox(
//             height: 30.0,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const TextContent('Answer-1'),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const TextContent('Answer-2'),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const TextContent('Answer-3'),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const TextContent('Answer-4'),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          AnswerButton(
            currentQuestion.answers[0],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[1],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[2],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[3],
            () {},
          ),
        ],
      ),
    );
  }
}
