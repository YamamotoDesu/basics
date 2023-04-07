import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:basics/root_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'presentation/navigation_example_screen/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
      ),
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => const RootBottomNavigation(),
        '/screenOne': (BuildContext context) => const ScreenOne(),
        '/screenTwo': (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
