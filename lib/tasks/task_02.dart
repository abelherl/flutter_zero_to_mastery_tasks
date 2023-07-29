// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Task02());
// }
//
// class Task02 extends StatelessWidget {
//   const Task02({super.key});
//
//   static const List<Question> questionList = [
//     Question(
//       category: QuestionCategory.general,
//       question: 'Is this a simple general question?',
//     ),
//     Question(
//       category: QuestionCategory.sports,
//       question: 'Can I start playing volleyball?',
//     ),
//     Question(
//       category: QuestionCategory.music,
//       question:
//       'What acoustic guitar should I buy? And this is a long string to test the max lines and the overflow property of the text.',
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
//         body: const QuestionListView(questionList: questionList),
//       ),
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
//           Text(
//             question.category.name.toUpperCase(),
//             style: const TextStyle(
//               color: Colors.blue,
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 2,
//             ),
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
// enum QuestionCategory { general, sports, music }