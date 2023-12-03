import 'package:first_project/answer_button.dart';
//import 'package:first_project/text.dart';
import 'package:flutter/material.dart';
import 'package:first_project/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(
      () {
        currentQuestionIndex++;
      },
    );
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity, //This will take all the space that is available
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(answer, () {
                  answerQuestion(answer);
                });
              },
            ), //[This is mapping which converts list to a list of new datatype which we want, this won't change the initial list, instead both will coexist in the memory but the children element will not take list as an input rather it wants a widget and (...) this is spread operator which transforms the list to a comma seperated value.]
          ],
        ),
      ),
    );
  }
}
