import 'package:flutter/cupertino.dart';

class ColorProvider with ChangeNotifier {
  Color _color;

  ColorProvider(this._color);

  Color get color => _color;

  set color(Color value) {
    if (_color == value) return;

    _color = value;
    notifyListeners();
  }
}
// setColor(c) // java
// color = c // dart
