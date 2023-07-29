import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/components/question_category_tag.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/widgets/stack_item.dart';

class QuestionDetailPage extends StatefulWidget {
  final Question question;

  const QuestionDetailPage({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  State<QuestionDetailPage> createState() => _QuestionDetailPageState();
}

class _QuestionDetailPageState extends State<QuestionDetailPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final question = widget.question;

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

class IconFloatingActionButton extends StatelessWidget {
  final String heroTag;
  final Function() onPressed;
  final bool isDisabled;
  final bool isIncrement;

  const IconFloatingActionButton({
    Key? key,
    required this.heroTag,
    required this.onPressed,
    required this.isDisabled,
    required this.isIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      backgroundColor: Colors.white,
      onPressed: () => onPressed(),
      child: Icon(
        _getButtonIcon(),
        color: _getButtonColor(),
      ),
    );
  }

  Color _getButtonColor() {
    if (isDisabled) {
      return Colors.black38;
    } else if (isIncrement) {
      return Colors.green;
    }
    return Colors.red;
  }

  IconData _getButtonIcon() {
    if (isIncrement) {
      return Icons.chevron_right;
    }
    return Icons.chevron_left;
  }
}
