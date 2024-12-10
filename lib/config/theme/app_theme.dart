import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(selectedColor >= 0, 'Colors must be between 0 to 6');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[_setSelectedColor(selectedColor)]);
  }

  int _setSelectedColor(int selectedColor) {
    if (selectedColor < 0 || selectedColor > _colorThemes.length - 1) return 0;
    return selectedColor;
  }
}
