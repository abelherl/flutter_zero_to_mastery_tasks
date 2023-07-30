import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      decoration: BoxDecoration(
        color: const Color(0xFFC9E9FC),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFC9E9FC).withOpacity(0.5),
            blurRadius: 7,
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }
}
