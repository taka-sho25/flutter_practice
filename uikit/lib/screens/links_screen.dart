import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:uikit/screens/button_screen.dart';

class LinksScreen extends StatelessWidget {
  const LinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Component Links')),
        body: RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text: 'Button Component',
                style: const TextStyle(color: Colors.black),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ButtonScreen()));
                  }),
          ],
        )));
  }
}
