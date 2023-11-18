import 'package:flutter/material.dart';
import 'package:first/text.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color_1, this.color_2, this.color_3, {super.key});

  GradientContainer.purple({super.key})
      : color_1 = Colors.indigo,
        color_2 = Colors.blue,
        color_3 = Colors
            .green; //body: GradientContainer.purple() this is the way to call this constructor.

  final Color color_1;
  final Color color_2;
  final Color color_3;

  var currentImage = 'assets/images/dice-1.png';

  rollDice() {
    currentImage = 'assets/images/dice-2.png';
    print('Image changed');
  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              currentImage,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ), // This is another way of adding gap between two widgets[kind of Padding]
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 10.0,
                //   bottom: 10.0,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              child: const TextInfo("Roll Dice"),
            ),
          ],
        ), //text.dart
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