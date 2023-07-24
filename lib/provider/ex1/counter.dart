import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _value = 0;
  int getValue() {
    return _value;
  }

  void increaseByOne() {
    _value++;
    notifyListeners();
  }
}
