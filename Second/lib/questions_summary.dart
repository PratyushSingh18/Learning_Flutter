import 'package:first_project/question_adjustment.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return QuestionAdjustment(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
