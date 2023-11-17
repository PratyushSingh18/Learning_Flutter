import 'package:flutter/material.dart';
import 'package:first/text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color_1, this.color_2, this.color_3,
      {super.key});

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
        child: TextInfo('Hello World!'), //text.dart
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
