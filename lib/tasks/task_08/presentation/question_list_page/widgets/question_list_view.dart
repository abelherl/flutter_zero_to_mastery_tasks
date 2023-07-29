import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/widgets/question_widget.dart';

class QuestionListView extends StatelessWidget {
  final List<Question> questionList;

  const QuestionListView({
    Key? key,
    required this.questionList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: questionList.length,
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (_, __) =>
          const SizedBox(height: 12),
      itemBuilder: (_, index) =>
          QuestionWidget(question: questionList[index]),
    );
  }
}
