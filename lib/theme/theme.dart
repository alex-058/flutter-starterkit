import 'package:flutter/material.dart';
import 'package:flutter_starterkit/theme/widget_themes/appBar_theme.dart';
import 'package:flutter_starterkit/theme/widget_themes/elevated_button_theme.dart';
import 'package:flutter_starterkit/theme/widget_themes/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class WAppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    textTheme: WAppTextTheme.lightTextTheme,
    elevatedButtonTheme: WAppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    textTheme: WAppTextTheme.darkTextTheme,
  );
}
