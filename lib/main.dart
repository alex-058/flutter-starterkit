import 'package:flutter/material.dart';
import 'package:flutter_starterkit/screens/home_page.dart';
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
      home: const MyHomePage(title: 'Flutter Starterkit'),
    );
  }
}
