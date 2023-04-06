import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: Container(
          color: Colors.pink,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    color: Colors.green,
                    child: const Text("First Column child")),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      "Hello World",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text("Last Column child")
              ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("clicked"),
            child: const Icon(Icons.ac_unit)),
      ),
    );
  }
}
