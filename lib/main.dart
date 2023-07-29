import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/helpers/route_name_helper.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/question_detail_page.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/question_list_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const QuestionListPage(),
      routes: {
        RouteNameHelper.questionList: (context) => const QuestionListPage(),
        RouteNameHelper.questionDetail: (context) => const QuestionDetailPage(),
      },
    ),
  );
}
