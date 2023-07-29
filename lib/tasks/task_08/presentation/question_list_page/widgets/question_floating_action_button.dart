import 'package:flutter/material.dart';

class QuestionFloatingActionButton extends StatelessWidget {
  final Function() onPressed;

  const QuestionFloatingActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed(),
      child: const Icon(Icons.description),
    );
  }
}
