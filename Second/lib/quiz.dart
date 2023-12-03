import 'package:first_project/data/questions.dart';
import 'package:first_project/final_setup.dart';
import 'package:first_project/questions_screen.dart';
import 'package:first_project/results_screen.dart';
import 'package:flutter/material.dart';
//import 'package:first_project/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'Start-Screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void restart() {
    selectedAnswers = [];
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = FinalSetup(switchScreen);

    if (activeScreen == 'Questions-Screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    //This can also be used to switch between the screens instead of the ternery operators.

    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restart,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(7, 70, 121, 1),
                Color.fromARGB(255, 48, 133, 159),
                Color.fromARGB(255, 56, 165, 112)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
