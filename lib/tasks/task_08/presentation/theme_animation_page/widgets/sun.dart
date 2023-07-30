import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/theme_animation_page/widgets/shine.dart';

class Sun extends StatelessWidget {
  const Sun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shineColor = Colors.white.withOpacity(0.2);

    return Stack(
      alignment: Alignment.center,
      children: [
        Shine(
          size: 140,
          color: shineColor,
        ),
        Shine(
          size: 110,
          color: shineColor,
        ),
        Shine(
          size: 80,
          color: shineColor,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xDDFC554F),
                Color(0xDDFFF79E),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
