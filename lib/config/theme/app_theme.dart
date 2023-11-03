import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFFBFF00);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

const List<Brightness> _brightnessMode = [Brightness.light, Brightness.dark];

class AppTheme {
  final int selectedColor;
  final int brightness;

  AppTheme({this.selectedColor = 0, this.brightness = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Index of Colors must be between 0 - ${_colorThemes.length}"),
        assert(
          brightness >= 0 && brightness < _brightnessMode.length,
          "Index of Brightness must be between 0 - ${_brightnessMode.length - 1}",
        );

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: _brightnessMode[brightness]);
  }
}
