
import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/navigation_example_screen/screen_one.dart';
import 'package:basics/root_bottom_navigation.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/navigation_example_screen/screen_two.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppThem.lightTheme,
        darkTheme: AppThem.dartTheme,
        home: const RootBottomNavigation(),
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const RootBottomNavigation(),
          '/screenOne': (BuildContext context) => const ScreenOne(),
          '/screenTwo': (BuildContext context) => const ScreenTwo(),
        },
      );
    });
  }
}
