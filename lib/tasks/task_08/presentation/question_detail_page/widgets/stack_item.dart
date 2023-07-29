import 'package:flutter/material.dart';

class StackItem extends StatelessWidget {
  final String text;
  final MaterialColor color;

  const StackItem({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color.shade100,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
