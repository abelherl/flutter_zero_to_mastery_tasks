import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/presentation/theme_animation_page/widgets/shine.dart';

class Moon extends StatelessWidget {
  const Moon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shineColor = Colors.white.withOpacity(0.1);

    return Stack(
      alignment: Alignment.center,
      children: [
        Shine(
          size: 50,
          color: shineColor,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF8983F7),
                Color(0xFFA3DAFB),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
