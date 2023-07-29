// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Task05());
// }
//
// class Task05 extends StatefulWidget {
//   const Task05({super.key});
//
//   @override
//   State<Task05> createState() => _Task05State();
// }
//
// class _Task05State extends State<Task05> {
//   /// Can use (constraints.maxWidth < constraints.maxHeight) instead
//   /// but I'll just make it simple for now, is this fine?
//   bool _isShrink = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade100,
//         appBar: AppBar(
//           title: Text(_isShrink ? 'Shrink!' : 'Normal!'),
//         ),
//         body: AdaptiveListView(isShrink: _isShrink),
//         floatingActionButton: MyFloatingActionButton(
//             onPressed: () => setState(() => _isShrink = !_isShrink)),
//       ),
//     );
//   }
// }
//
// class AdaptiveListView extends StatelessWidget {
//   final bool isShrink;
//
//   const AdaptiveListView({
//     Key? key,
//     required this.isShrink,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> stringList = [
//       'Random',
//       'Strings',
//       'That',
//       'Appears',
//       'Randomly'
//     ];
//
//     return SizedBox(
//       height: isShrink ? 75 : null,
//       child: ListView.builder(
//         itemCount: stringList.length,
//         padding: const EdgeInsets.all(16),
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: isShrink ? Axis.horizontal : Axis.vertical,
//         itemBuilder: (context, index) =>
//             AdaptiveCard(text: stringList[index], isShrink: isShrink),
//       ),
//     );
//   }
// }
//
// class AdaptiveCard extends StatelessWidget {
//   final String text;
//   final bool isShrink;
//
//   const AdaptiveCard({
//     Key? key,
//     required this.text,
//     required this.isShrink,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       margin: EdgeInsets.only(
//         right: isShrink ? 12 : 0,
//         bottom: isShrink ? 0 : 12,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(child: Text(text)),
//     );
//   }
// }
//
// class MyFloatingActionButton extends StatelessWidget {
//   final Function() onPressed;
//
//   const MyFloatingActionButton({
//     Key? key,
//     required this.onPressed,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: onPressed,
//       child: const Icon(Icons.threesixty_rounded),
//     );
//   }
// }
