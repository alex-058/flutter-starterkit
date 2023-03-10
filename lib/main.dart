import 'package:flutter/material.dart';
import 'package:flutter_starterkit/screens/landing_page.dart';
import 'package:flutter_starterkit/screens/theme_info_page.dart';
import 'package:flutter_starterkit/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: WAppTheme.lightTheme,
      darkTheme: WAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LandingPage(title: 'Flutter Starterkit'),
    );
  }
}
