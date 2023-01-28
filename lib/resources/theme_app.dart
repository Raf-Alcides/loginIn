
import 'package:flutter/material.dart';


class ThemeApp {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.teal
  );
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.brown,
  );
}