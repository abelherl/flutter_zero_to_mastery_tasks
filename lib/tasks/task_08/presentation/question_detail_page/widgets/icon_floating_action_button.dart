import 'package:flutter/material.dart';

class IconFloatingActionButton extends StatelessWidget {
  final String heroTag;
  final Function() onPressed;
  final bool isDisabled;
  final bool isIncrement;

  const IconFloatingActionButton({
    Key? key,
    required this.heroTag,
    required this.onPressed,
    required this.isDisabled,
    required this.isIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FloatingActionButton(
      heroTag: heroTag,
      backgroundColor: theme.colorScheme.background,
      onPressed: () => onPressed(),
      child: Icon(
        _getButtonIcon(),
        color: _getButtonColor(theme: theme),
      ),
    );
  }

  Color _getButtonColor({required ThemeData theme}) {
    if (isDisabled) {
      return theme.disabledColor;
    } else if (isIncrement) {
      return Colors.green;
    }
    return Colors.red;
  }

  IconData _getButtonIcon() {
    if (isIncrement) {
      return Icons.chevron_right;
    }
    return Icons.chevron_left;
  }
}
