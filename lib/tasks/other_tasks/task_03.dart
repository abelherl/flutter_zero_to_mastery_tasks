// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Task03());
// }
//
// class Task03 extends StatelessWidget {
//   const Task03({super.key});
//
//   static const List<Question> questionList = [
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
//           'What acoustic guitar should I buy? And this is a long string to test the max lines and the overflow property of the text.',
//     ),
//     Question(
//       category: QuestionCategory.sport,
//       question: 'How to start/prepare for Taekwondo?',
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
//       image: QuestionImageHelper().getImageForCategory(category),
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
// class QuestionImageHelper {
//   AssetImage getImageForCategory(QuestionCategory category) {
//     return AssetImage('assets/category_icons/${category.name}.png');
//   }
// }
//
// enum QuestionCategory { general, sport, music }
