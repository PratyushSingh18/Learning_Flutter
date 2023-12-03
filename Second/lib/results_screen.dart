import 'package:first_project/data/questions.dart';
import 'package:first_project/questions_summary.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    //Here the data type is List which takes map which has String and Object as the Key:Value pair.
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'choosen_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    var summaryData = getSummaryData();
    var getTotalQuestions = questions.length;
    var getCorrectQuestions = summaryData.where(
      (data) {
        return data['correct_answer'] == data['choosen_answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$getCorrectQuestions out of $getTotalQuestions correct!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton.icon(
              onPressed: onRestart,
              icon: const Icon(
                Icons.autorenew_outlined,
                color: Colors.black,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.cyan.shade200),
            )
          ],
        ),
      ),
    );
  }
}
