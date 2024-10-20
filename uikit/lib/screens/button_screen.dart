import 'package:flutter/material.dart';

import 'package:uikit/components/button/button.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Button Component')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Button(
              onPressed: () => print('default button pressed'),
              child: const Text(
                'default button',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            Button(
              onPressed: () => print('button disabled'),
              disabled: true,
              child: const Text(
                'disabled button',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            Button(
              backgroundColor: Colors.amber.shade500,
              border: const BorderSide(color: Colors.black, width: 1),
              borderRadius: 10,
              onPressed: () => print('styled button pressed'),
              child: const Text(
                'styled button',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        )));
  }
}
