import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFFBFF00);
const List<Color> _colorThemes = [
_customColor,
Colors.teal,
Colors.blue,
Colors.brown,
Colors.cyan,
Colors.orange,
Colors.pink,
];

class AppTheme{

final int selectedColor;

  AppTheme({
    this.selectedColor = 0
    }): assert(selectedColor >= 0 && selectedColor <=  _colorThemes.length -1, "Index of colors must be between 0 - ${_colorThemes.length}");


ThemeData theme(){
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectedColor],
    brightness: Brightness.dark
  );
}

}