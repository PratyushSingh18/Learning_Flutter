import 'package:flutter/material.dart';
import 'package:first/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(250, 46, 8, 151),
          Color.fromARGB(255, 54, 10, 174),
          Color.fromARGB(255, 60, 15, 184),
        ),
      ),
    ),
  );
}



// This is the way to pass values to a list 

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(colors: [
//           Color.fromARGB(250, 46, 8, 151),
//           Color.fromARGB(255, 54, 10, 174),
//           Color.fromARGB(255, 60, 15, 184)
//         ] //gradient_container.dart
//             ),
//       ),
//     ),
//   );
// }
