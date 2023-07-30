import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/application/theme_service.dart';
import 'package:flutter_example/tasks/task_08/helpers/route_name_helper.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_detail_page/question_detail_page.dart';
import 'package:flutter_example/tasks/task_08/presentation/question_list_page/question_list_page.dart';
import 'package:flutter_example/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeService(),
      child: Consumer<ThemeService>(builder: (_, themeService, __) {
        return MaterialApp(
          themeMode: themeService.getThemeMode(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const QuestionListPage(),
          routes: {
            RouteNameHelper.questionList: (_) => const QuestionListPage(),
            RouteNameHelper.questionDetail: (_) =>
            const QuestionDetailPage(),
          },
        );
      }),
    ),
  );
}
