import 'package:flutter/material.dart';
import '../utils/helpers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [Icon(Icons.info_outline)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'This serves as an overview of all the applied themes for the application (Body M) ',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          addVerticalSpace(30),
          Image.asset(
            'assets/images/profile_pic.png',
            height: 200,
            width: 200,
          ),
          addVerticalSpace(20),
          Text(
            'Headline L ',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          addVerticalSpace(20),
          Text(
            'Headline S',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          addVerticalSpace(20),
          Text(
            'Body L',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          addVerticalSpace(20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField()),
          addVerticalSpace(20),
          ElevatedButton(
              onPressed: () {
                showSimpleSnackBar(context, 'Notes button triggered');
              },
              child: const Text('Add notes'))
        ]),
      ),
    );
  }
}
