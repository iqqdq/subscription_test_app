import 'package:flutter/material.dart';

abstract class Colours {
  static const primary = Color.fromRGBO(107, 102, 216, 1.0);
  static const primaryLight = Color.fromRGBO(186, 186, 215, 1.0);
  static const translucent = Color.fromRGBO(107, 102, 216, 0.1);
  static const transparent = Colors.transparent;

  static const white = Colors.white;
  static var white10 = Colors.white.withValues(alpha: 0.1);
  static var white30 = Colors.white.withValues(alpha: 0.3);
  static var white40 = Colors.white.withValues(alpha: 0.4);
  static var white46 = Colors.white.withValues(alpha: 0.46);

  static var black = Colors.black;
  static var black37 = Colors.black.withValues(alpha: 0.37);
}
