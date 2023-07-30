import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_image.dart';
import 'package:flutter_example/tasks/task_08/objects/question.dart';

class QuestionCategoryTag extends StatelessWidget {
  const QuestionCategoryTag({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        QuestionCategoryImage(category: question.category),
        const SizedBox(width: 12),
        Text(
          question.category.name.toUpperCase(),
          style: theme.textTheme.labelMedium!.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
      ],
    );
  }
}
