import 'package:first/dice_roller.dart';
import 'package:flutter/material.dart';
//import 'package:first/text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color_1, this.color_2, this.color_3,
      {super.key});

  const GradientContainer.purple({super.key})
      : color_1 = Colors.indigo,
        color_2 = Colors.blue,
        color_3 = Colors
            .green; //body: GradientContainer.purple() this is the way to call this constructor.

  final Color color_1;
  final Color color_2;
  final Color color_3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color_1, color_2, color_3],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(), //text.dart
      ),
    );
  }
}

//This is the other way of doing this using named arguments and list

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//       ),
//       child: const Center(
//         child: TextInfo('Hello Everyone!'), //text.dart
//       ),
//     );
//   }
// }