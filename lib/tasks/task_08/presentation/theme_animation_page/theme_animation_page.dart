import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/application/theme_service.dart';
import 'package:flutter_example/tasks/task_08/presentation/theme_animation_page/widgets/moon.dart';
import 'package:flutter_example/tasks/task_08/presentation/theme_animation_page/widgets/star.dart';
import 'package:flutter_example/tasks/task_08/presentation/theme_animation_page/widgets/sun.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatefulWidget {
  const ThemeAnimationPage({Key? key}) : super(key: key);

  @override
  State<ThemeAnimationPage> createState() => _ThemeAnimationPageState();
}

class _ThemeAnimationPageState extends State<ThemeAnimationPage> {
  final _borderRadius = BorderRadius.circular(16);
  static const _animationDuration = Duration(seconds: 1);
  static const _animationCurve = Curves.easeInOut;

  bool _isDisableSwitch = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Consumer<ThemeService>(builder: (_, themeService, __) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Material(
            elevation: 5,
            borderRadius: _borderRadius,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: _getGradientColors(themeService.isDarkMode),
                ),
                borderRadius: _borderRadius,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  AnimatedPositioned(
                    top: themeService.isDarkMode ? 135 : 105,
                    duration: _animationDuration,
                    curve: _animationCurve,
                    child: AnimatedOpacity(
                      opacity: themeService.isDarkMode ? 0.5 : 1,
                      duration: _animationDuration,
                      curve: _animationCurve,
                      child: const Sun(),
                    ),
                  ),
                  AnimatedPositioned(
                    top: themeService.isDarkMode ? 40 : 85,
                    right: themeService.isDarkMode ? 60 : 20,
                    duration: _animationDuration,
                    curve: _animationCurve,
                    child: AnimatedOpacity(
                      opacity: themeService.isDarkMode ? 1 : 0,
                      duration: _animationDuration,
                      curve: _animationCurve,
                      child: const Moon(),
                    ),
                  ),
                  AnimatedPositioned(
                    top: 60,
                    right: themeService.isDarkMode ? 140 : 80,
                    duration: _animationDuration,
                    curve: _animationCurve,
                    child: AnimatedOpacity(
                      opacity: themeService.isDarkMode ? 1 : 0,
                      duration: _animationDuration,
                      curve: _animationCurve,
                      child: const Star(),
                    ),
                  ),
                  AnimatedPositioned(
                    top: 110,
                    right: themeService.isDarkMode ? 100 : 80,
                    duration: _animationDuration,
                    curve: _animationCurve,
                    child: AnimatedOpacity(
                      opacity: themeService.isDarkMode ? 1 : 0,
                      duration: _animationDuration,
                      curve: _animationCurve,
                      child: const Star(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colorScheme.background,
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(16)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dark Mode',
                            style: theme.textTheme.titleLarge,
                          ),
                          Switch(
                            value: themeService.isDarkMode,
                            onChanged:
                                _onChangedSwitch(themeService: themeService),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  List<Color> _getGradientColors(bool isDarkMode) {
    if (isDarkMode) {
      return const [
        Color(0xFF94A9FF),
        Color(0xFF6B66CC),
        Color(0xFF200F75),
      ];
    }
    return const [
      Color(0xFFFFFA66),
      Color(0xFFD36C50),
      Color(0xFF573170),
    ];
  }

  Function(bool)? _onChangedSwitch({required ThemeService themeService}) {
    if (_isDisableSwitch) {
      return null;
    }

    return (_) async {
      setState(() => _isDisableSwitch = true);
      themeService.toggleTheme();
      await Future.delayed(_animationDuration, () {
        setState(() => _isDisableSwitch = false);
      });
    };
  }
}
