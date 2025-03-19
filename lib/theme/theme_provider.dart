import 'package:dark_light_mode/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  //get, set
  ThemeData get themeData => _themeData;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
  }

  /// Toggles the current theme between light and dark mode.
  ///
  /// This method switches the `_themeData` from the current theme
  /// to the opposite theme (light to dark or dark to light) and
  /// notifies listeners about the change.

  void toggleTheme() {
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
