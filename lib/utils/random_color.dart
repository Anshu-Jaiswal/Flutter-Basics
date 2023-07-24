import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

Color randomColor() {
  const c = Colors.primaries;
  return c[Random().nextInt(c.length)];
}
