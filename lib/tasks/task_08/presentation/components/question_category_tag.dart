import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_image.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';

class QuestionCategoryTag extends StatelessWidget {
  const QuestionCategoryTag({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuestionCategoryImage(category: question.category),
        const SizedBox(width: 12),
        Text(
          question.category.name.toUpperCase(),
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 13,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
