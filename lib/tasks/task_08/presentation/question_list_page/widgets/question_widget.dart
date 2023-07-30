import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_tag.dart';
import 'package:flutter_example/tasks/task_08/helpers/route_name_helper.dart';
import 'package:flutter_example/tasks/task_08/objects/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;

  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final inkWellColor = colorScheme.primary.withAlpha(15);

    return Material(
      elevation: 6,
      shadowColor: Colors.black26,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: borderRadius,
        ),
        child: InkWell(
          splashColor: inkWellColor,
          highlightColor: inkWellColor,
          customBorder: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              RouteNameHelper.questionDetail,
              arguments: {
                'question': question,
              },
            );
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
                  style: textTheme.bodyLarge!.copyWith(
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
