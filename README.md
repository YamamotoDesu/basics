# basics

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<img width="300" alt="スクリーンショット 2023-04-05 22 02 37" src="https://user-images.githubusercontent.com/47273077/230088487-d7b78ae8-77bd-4c80-93fa-4977205766be.png">

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.amber
          ),
        ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Basic"),), 
        body: const Center(
          child: Text("Hello World")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked"),
          child: const Icon(Icons.ac_unit)),
        ),
    );
```
