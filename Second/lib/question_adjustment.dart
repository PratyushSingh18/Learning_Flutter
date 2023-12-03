import 'package:first_project/questions_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionAdjustment extends StatelessWidget {
  const QuestionAdjustment(this.summaryData, {super.key});

  final Map<String, Object> summaryData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryData['choosen_answer'] == summaryData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            summaryData['question_index'] as int, isCorrectAnswer),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                summaryData['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.pink,
                  fontSize: 14.0,
                ),
              ),
              Text(
                summaryData['choosen_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 37, 33, 243),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
