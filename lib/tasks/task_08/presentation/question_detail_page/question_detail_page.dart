import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_tag.dart';
import 'package:flutter_example/tasks/task_08/objects/question.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/widgets/icon_floating_action_button.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/widgets/stack_item.dart';

class QuestionDetailPage extends StatefulWidget {
  const QuestionDetailPage({Key? key}) : super(key: key);

  @override
  State<QuestionDetailPage> createState() => _QuestionDetailPageState();
}

class _QuestionDetailPageState extends State<QuestionDetailPage> {
  int _currentIndex = 0;
  late Question question;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    question = args!['question'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionCategoryTag(question: question),
            const SizedBox(height: 20),
            Text(
              question.question,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 3,
              overflow: TextOverflow.fade,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: [
                  const SizedBox(),
                  StackItem(
                    text: question.hints.first,
                    color: Colors.red,
                  ),
                  StackItem(
                    text: question.hints.last,
                    color: Colors.orange,
                  ),
                  StackItem(
                    text: question.solution,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconFloatingActionButton(
            heroTag: 'decrementButton',
            onPressed: () => _changeIndex(isIncrement: false),
            isDisabled: _isDisableButton(isIncrement: false),
            isIncrement: false,
          ),
          IconFloatingActionButton(
            heroTag: 'incrementButton',
            onPressed: () => _changeIndex(isIncrement: true),
            isDisabled: _isDisableButton(isIncrement: true),
            isIncrement: true,
          ),
        ],
      ),
    );
  }

  bool _isDisableButton({required bool isIncrement}) {
    return (isIncrement && _currentIndex == 3) ||
        (!isIncrement && _currentIndex == 0);
  }

  void _changeIndex({required bool isIncrement}) {
    if (_isDisableButton(isIncrement: isIncrement)) {
      return;
    }

    setState(() {
      isIncrement ? _currentIndex++ : _currentIndex--;
    });
  }
}