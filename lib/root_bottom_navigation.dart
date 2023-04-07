import 'package:flutter/material.dart';

import 'presentation/counter/counter_screen.dart';
import 'presentation/list/list_screen.dart';
import 'presentation/widget_example/wiget_examples_screen.dart';


class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _curentIndex,
        children: const [
          WidgetExampleScreen(),
          CounterScreen(),
          ListScreen()
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            selectedItemColor: Colors.blue,
            onTap: (index) {
              setState(() {
                _curentIndex = index;
              });
            },
            currentIndex: _curentIndex, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'examples'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'counter'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
      ]),
    );
  }
}
