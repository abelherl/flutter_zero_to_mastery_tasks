import 'package:flutter/material.dart';

class Question {
  final QuestionCategory category;
  final String question;
  final List<String> hints;
  final String solution;

  const Question({
    Key? key,
    required this.category,
    required this.question,
    this.hints = const ['hint 1', 'hint 2'],
    this.solution = 'solution',
  });
}

enum QuestionCategory {
  general(
      name: 'General', icon: AssetImage('assets/category_icons/general.png')),
  sport(
      name: 'Sport',icon: AssetImage('assets/category_icons/sport.png')),
  music(
      name: 'Music',icon: AssetImage('assets/category_icons/music.png'));

  const QuestionCategory({
    required this.name,
    required this.icon,
  });

  final String name;
  final AssetImage icon;
}
