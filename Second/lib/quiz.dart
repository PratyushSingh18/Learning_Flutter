import 'package:first_project/final_setup.dart';
import 'package:first_project/questions_screen.dart';
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
  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = FinalSetup(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
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
          child: currentScreen,
        ),
      ),
    );
  }
}

// class _QuizState extends State<Quiz> {
//   Widget? currentScreen;

//   @override
//   void initState() {
//     currentScreen = FinalSetup(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       currentScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(
//             currentScreen,
//             Color.fromRGBO(73, 84, 93, 1),
//             Color.fromARGB(255, 48, 133, 159),
//             Color.fromARGB(255, 56, 165, 112)),
//       ),
//     );
//   }
// }
