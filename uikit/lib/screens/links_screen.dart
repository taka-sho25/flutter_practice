import 'package:flutter/material.dart';

import 'package:uikit/screens/button_screen.dart';
import 'package:uikit/screens/input_screen.dart';

class LinksScreen extends StatelessWidget {
  const LinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Component Links')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Button Component'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ButtonScreen(),
                ));
              },
            ),
            ElevatedButton(
              child: const Text('Input Component'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const InputScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
