import 'package:flutter/material.dart';

import 'package:uikit/components/input/input.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Input Component')),
        body: const Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Input(
              type: InputType.text,
              value: 'input',
              placeholder: 'input text placeholder',
            ),
            Input(
              type: InputType.number,
              value: '',
              placeholder: 'input number placeholder',
            ),
            Input(
              type: InputType.password,
              value: '',
              placeholder: 'input password placeholder',
            ),
          ],
        )));
  }
}
