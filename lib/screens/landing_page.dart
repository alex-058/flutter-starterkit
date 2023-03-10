import 'package:flutter/material.dart';
import 'package:flutter_starterkit/screens/home_page.dart';
import 'package:flutter_starterkit/screens/theme_info_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late int _navigationIndex;
  @override
  void initState() {
    super.initState();
    _navigationIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectPage(_navigationIndex),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navigationIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.draw), label: 'Theming')
        ],
        onTap: (value) {
          setState(() {
            _navigationIndex = value;
          });
        },
      ),
    );
  }

  Widget _selectPage(int index) {
    if (index == 0) {
      return HomePage();
    } else if (index == 1) {
      return ThemeInfoPage();
    } else {
      return Center(child: Text('An error has occured'));
    }
  }
}
