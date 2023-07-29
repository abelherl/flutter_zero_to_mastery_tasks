import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_image.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_tag.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/question_detail_page.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;

  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    final inkWellColor = Colors.blue.shade100;
    return Material(
      elevation: 6,
      shadowColor: Colors.black26,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
        child: InkWell(
          splashColor: inkWellColor,
          highlightColor: inkWellColor,
          customBorder: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return QuestionDetailPage(question: question);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionCategoryTag(question: question),
                const SizedBox(height: 12),
                Text(
                  question.question,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
