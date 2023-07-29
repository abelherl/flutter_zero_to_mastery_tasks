// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Task01());
// }
//
// class Task01 extends StatelessWidget {
//   const Task01({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final messengerKey = GlobalKey<ScaffoldMessengerState>();
//
//     return MaterialApp(
//       scaffoldMessengerKey: messengerKey,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World!'),
//         ),
//         body: const Center(child: Text('Hello World!')),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             const snackBar = SnackBar(
//               content: Text('Yay! A SnackBar!'),
//             );
//             messengerKey.currentState!.showSnackBar(snackBar);
//           },
//         ),
//       ),
//     );
//   }
// }