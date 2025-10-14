import 'package:flutter/material.dart';
import 'package:otex/core/theme/color_app.dart';

class ThemeApp {
  static ThemeData light = ThemeData(
    fontFamily: 'Tajawal',
    
    scaffoldBackgroundColor: ColorApp.white,
    appBarTheme: AppBarTheme(backgroundColor: ColorApp.white),
  );
}
