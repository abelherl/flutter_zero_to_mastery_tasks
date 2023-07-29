import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/widgets/question_floating_action_button.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/widgets/question_list_view.dart';

class QuestionListPage extends StatefulWidget {
  const QuestionListPage({super.key});

  @override
  State<QuestionListPage> createState() => _QuestionListPageState();
}

class _QuestionListPageState extends State<QuestionListPage> {
  static const List<Question> questionList = [
    Question(
      category: QuestionCategory.general,
      question: 'Is this a simple general question?',
    ),
    Question(
      category: QuestionCategory.sport,
      question: 'Can I start playing volleyball?',
    ),
    Question(
      category: QuestionCategory.music,
      question:
          'What acoustic guitar should I buy? And this is a long string to test the max lines and the overflow property of the text.',
    ),
    Question(
      category: QuestionCategory.sport,
      question: 'How to start/prepare for Taekwondo?',
    ),
    Question(
      category: QuestionCategory.general,
      question: 'How to prepare a passport?',
    ),
    Question(
      category: QuestionCategory.sport,
      question: 'Is it football or soccer?',
    ),
    Question(
      category: QuestionCategory.general,
      question: 'How to use ChatGPT?',
    ),
    Question(
      category: QuestionCategory.sport,
      question: 'How to warm up for a swimming session?',
    ),
    Question(
      category: QuestionCategory.music,
      question: 'What are the easiest songs to learn on guitar?',
    ),
    Question(
      category: QuestionCategory.sport,
      question: 'What is the best brand for tennis rackets?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: const QuestionListView(questionList: questionList),
        floatingActionButton: QuestionFloatingActionButton(
          onPressed: () => _openRandomQuestion,
        ),
      ),
    );
  }

  void _openRandomQuestion() {
    questionList.add(questionList[Random().nextInt(questionList.length)]);
  }
}