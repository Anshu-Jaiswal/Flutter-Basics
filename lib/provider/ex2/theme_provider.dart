import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkActive;

  ThemeProvider({bool useDark = false})
      : _isDarkActive = useDark; // constructor with default value

  bool get isDark => _isDarkActive; // getter

  set dark(bool value) {
    //setter
    _isDarkActive = value;
    notifyListeners();
  }
}
