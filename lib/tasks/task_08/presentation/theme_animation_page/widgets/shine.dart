

import 'package:flutter/material.dart';

class Shine extends StatelessWidget {
  final double size;
  final Color color;

  const Shine({
    super.key,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}