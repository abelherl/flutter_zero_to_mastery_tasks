import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/objects/question.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_add_page/question_add_page.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/widgets/question_list_view.dart';

class QuestionListPage extends StatefulWidget {
  const QuestionListPage({super.key});

  @override
  State<QuestionListPage> createState() => _QuestionListPageState();
}

class _QuestionListPageState extends State<QuestionListPage> {
  List<Question> _questionList = [
    const Question(
      category: QuestionCategory.general,
      question: 'Is this a simple general question?',
    ),
    const Question(
      category: QuestionCategory.sport,
      question: 'Can I start playing volleyball?',
    ),
    const Question(
      category: QuestionCategory.music,
      question:
          'What acoustic guitar should I buy? And this is a long string to test the max lines and the overflow property of the text.',
    ),
    const Question(
      category: QuestionCategory.sport,
      question: 'How to start/prepare for Taekwondo?',
    ),
    const Question(
      category: QuestionCategory.general,
      question: 'How to prepare a passport?',
    ),
    const Question(
      category: QuestionCategory.sport,
      question: 'Is it football or soccer?',
    ),
    const Question(
      category: QuestionCategory.general,
      question: 'How to use ChatGPT?',
    ),
    const Question(
      category: QuestionCategory.sport,
      question: 'How to warm up for a swimming session?',
    ),
    const Question(
      category: QuestionCategory.music,
      question: 'What are the easiest songs to learn on guitar?',
    ),
    const Question(
      category: QuestionCategory.sport,
      question: 'What is the best brand for tennis rackets?',
    ),
  ];
  static const List<String> _labels = [
    'Questions',
    'Ask A Question',
  ];
  int _currentIndex = 0;
  bool _isDesktop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(_labels[_currentIndex]),
      ),
      body: Row(
        children: [
          _getBottomNavigationBar(isDesktopVersion: true),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: [
                QuestionListView(questionList: _questionList),
                QuestionAddPage(onSubmit: (question) => _onSubmit(question)),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _isDesktop = !_isDesktop),
        child: const Icon(Icons.threesixty_rounded),
      ),
      bottomNavigationBar: _getBottomNavigationBar(isDesktopVersion: false),
    );
  }

  void _onSubmit(Question question) {
    _questionList.add(question);
    setState(() {});
  }

  Widget _getBottomNavigationBar({required bool isDesktopVersion}) {
    if (isDesktopVersion) {
      if (!_isDesktop) {
        return const SizedBox();
      }
      return NavigationRail(
        selectedIndex: _currentIndex,
        destinations: [
          NavigationRailDestination(
            icon: const Icon(Icons.format_list_numbered_rounded),
            label: Text(_labels[0]),
          ),
          NavigationRailDestination(
            icon: const Icon(Icons.add),
            label: Text(_labels[1]),
          ),
        ],
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
      );
    }

    if (_isDesktop) {
      return const SizedBox();
    }

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      currentIndex: _currentIndex,
      onTap: (index) => setState(() => _currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.format_list_numbered_rounded),
          label: _labels[0],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add),
          label: _labels[1],
        ),
      ],
    );
  }
}
