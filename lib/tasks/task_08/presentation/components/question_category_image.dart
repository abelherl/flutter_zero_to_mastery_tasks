import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/objects/question.dart';

class QuestionCategoryImage extends StatelessWidget {
  final QuestionCategory category;
  const QuestionCategoryImage({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 16,
      width: 16,
      color: Theme.of(context).colorScheme.primary,
      image: category.icon,
    );
  }
}
