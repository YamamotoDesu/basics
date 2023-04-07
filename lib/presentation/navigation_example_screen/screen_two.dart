import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Blue')),
      backgroundColor: Colors.red,
      body: Center(
          child: TextButton(
        child: const Text('Go to Screen One'),
        onPressed: () {
          // Navigator.pushReplacementNamed(context, '/screenOne');
          Navigator.pushNamed(context, '/screenOne');
        },
      )),
    );
  }
}
