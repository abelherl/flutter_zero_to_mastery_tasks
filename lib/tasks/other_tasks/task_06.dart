// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Task06());
// }
//
// class Task06 extends StatefulWidget {
//   const Task06({super.key});
//
//   @override
//   State<Task06> createState() => _Task06State();
// }
//
// class _Task06State extends State<Task06> {
//   List<Question> questionList = [
//     Question(
//       category: QuestionCategory.general,
//       question: 'Is this a simple general question?',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'Can I start playing volleyball?',
//     ),
//     Question(
//       category: QuestionCategory.music,
//       question:
//       'What acoustic guitar should I buy? And this is a long string to test the max lines and the overflow property of the text.',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'How to start/prepare for Taekwondo?',
//     ),
//     Question(
//       category: QuestionCategory.general,
//       question: 'How to prepare a passport?',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'Is it football or soccer?',
//     ),
//     Question(
//       category: QuestionCategory.general,
//       question: 'How to use ChatGPT?',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'How to warm up for a swimming session?',
//     ),
//     Question(
//       category: QuestionCategory.music,
//       question: 'What are the easiest songs to learn on guitar?',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'What is the best brand for tennis rackets?',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade100,
//         appBar: AppBar(
//           title: const Text('Questions'),
//         ),
//         body: QuestionListView(questionList: questionList),
//         floatingActionButton: MyFloatingActionButton(
//           onPressed: () => _addRandomQuestion,
//         ),
//       ),
//     );
//   }
//
//   void _addRandomQuestion() {
//     questionList.add(questionList[Random().nextInt(questionList.length)]);
//     /// Question : Which is the better approach, empty setState
//     /// or filled setState?
//     setState(() {});
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
//       onPressed: onPressed(),
//       child: const Icon(Icons.add),
//     );
//   }
// }
//
// class QuestionListView extends StatelessWidget {
//   final List<Question> questionList;
//
//   const QuestionListView({
//     Key? key,
//     required this.questionList,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: questionList.length,
//       padding: const EdgeInsets.all(16),
//       physics: const BouncingScrollPhysics(),
//       itemBuilder: (context, index) =>
//           QuestionWidget(question: questionList[index]),
//     );
//   }
// }
//
// class QuestionWidget extends StatelessWidget {
//   final Question question;
//
//   const QuestionWidget({
//     Key? key,
//     required this.question,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       margin: const EdgeInsets.only(bottom: 12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               QuestionCategoryImage(category: question.category),
//               const SizedBox(width: 12),
//               Text(
//                 question.category.name.toUpperCase(),
//                 style: const TextStyle(
//                   color: Colors.blue,
//                   fontSize: 13,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 2,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             question.question,
//             maxLines: 2,
//             style: const TextStyle(
//               color: Colors.black87,
//               fontSize: 17,
//               overflow: TextOverflow.fade,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class QuestionCategoryImage extends StatelessWidget {
//   final QuestionCategory category;
//   const QuestionCategoryImage({
//     Key? key,
//     required this.category,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Image(
//       height: 16,
//       width: 16,
//       color: Colors.blue,
//       image: category.icon,
//     );
//   }
// }
//
// class Question {
//   final QuestionCategory category;
//   final String question;
//
//   const Question({
//     Key? key,
//     required this.category,
//     required this.question,
//   });
// }
//
// enum QuestionCategory {
//   general(icon: AssetImage('assets/category_icons/general.png')),
// sport(icon: AssetImage('assets/category_icons/sport.png')),
// music(icon: AssetImage('assets/category_icons/music.png'));
//
// const QuestionCategory({
// required this.icon,
// });
//
// final AssetImage icon;
// }
