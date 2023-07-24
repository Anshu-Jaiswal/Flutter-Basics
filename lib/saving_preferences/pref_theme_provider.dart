import 'package:flutter/material.dart';

class PrefThemeProvider with ChangeNotifier {
  bool _isDarkThemeActive = false;

  // int c = Colors.blue.value;

  bool get darkThemeActive => _isDarkThemeActive;

  set darkThemeActive(bool value) {
    if (value == _isDarkThemeActive) return;
    _isDarkThemeActive = value;
    notifyListeners();
  }
}
