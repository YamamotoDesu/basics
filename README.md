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

## Widgets - Scaffold & Material App

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

## Widgets - Container & Text

<img width="300" alt="スクリーンショット 2023-04-05 22 28 10" src="https://user-images.githubusercontent.com/47273077/230094920-5e376066-75ff-4460-832d-6814d7f009df.png">

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
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text("Hello World",
               style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
               ),),
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked"),
          child: const Icon(Icons.ac_unit)),
        ),
    );
  }
}
```

##  Column & Padding  & SizedBox
<img width="300" alt="スクリーンショット 2023-04-06 9 01 21" src="https://user-images.githubusercontent.com/47273077/230239615-7bb3b9b3-359c-47c6-880d-fde7ac2ae827.png">

```dart
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
```

## Widgets - Stack + add Assets
<img width="300" alt="スクリーンショット 2023-04-06 10 14 19" src="https://user-images.githubusercontent.com/47273077/230248084-fb6e5216-ad44-4bd7-949b-51bc3c2a33a4.png">

```dart
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                      "Yamamoto, freelancer for mobile - living in Japan",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
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
                Stack(
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          'assets/yamamoto.png',
                          fit: BoxFit.cover,
                        )),
                    const Positioned(left: 20,top: 80, child: Text('Kyo Yamamoto')),
                  ],
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg',
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
```


##  Widgets - ScrollView
<img width="300" alt="スクリーンショット 2023-04-06 10 14 19" src="https://user-images.githubusercontent.com/47273077/230254679-722edf87-5df6-402d-921e-1eae9009ef27.gif">

```dart
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
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Text(
                        "Yamamoto, freelancer for mobile - living in Japan",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                  Container(
                      color: Colors.green,
                      child: const Text("First Column child")),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          "Hello World",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/yamamoto.png',
                            fit: BoxFit.cover,
                          )),
                      const Positioned(
                          left: 20, top: 80, child: Text('Kyo Yamamoto')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 400,
                    width: 100,
                    color: Colors.green,
                    child: const Text("placeholder"),
                  ),
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("clicked"),
            child: const Icon(Icons.ac_unit)),
      ),
    );
  }
}
```

## Widgets - Media Query

<img width="300" alt="スクリーンショット 2023-04-06 11 53 06" src="https://user-images.githubusercontent.com/47273077/230260557-d4facd3b-6337-47bd-a2d9-70aabf296297.png">

```dart
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
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Text(
                        "Yamamoto, freelancer for mobile - living in Japan",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                  Container(
                      color: Colors.green,
                      child: const Text("First Column child")),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          "Hello World",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/yamamoto.png',
                            fit: BoxFit.cover,
                          )),
                      const Positioned(
                          left: 20, top: 80, child: Text('Kyo Yamamoto')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MediaQueryExample(),
                  const SizedBox(
                    height: 40,
                  ),
                  Builder(builder: (context){
                    return Container(
                      color: Colors.green,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: const Text("MediaQuery Example"),
                    );
                  })
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("clicked"),
            child: const Icon(Icons.ac_unit)),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: size.height / 5,
      child: const Center(
        child: Text("MediaQuery Example"),
      ),
    );
  }
}
```

## Widgets - Layout Builder

<img width="300" alt="スクリーンショット 2023-04-06 12 25 53" src="https://user-images.githubusercontent.com/47273077/230264693-5b7d66c0-c25f-4c5a-82b8-d63f34cb1aed.png">

```dart
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
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Text(
                        "Yamamoto, freelancer for mobile - living in Japan",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                  Container(
                      color: Colors.green,
                      child: const Text("First Column child")),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          "Hello World",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/yamamoto.png',
                            fit: BoxFit.cover,
                          )),
                      const Positioned(
                          left: 20, top: 80, child: Text('Kyo Yamamoto')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MediaQueryExample(),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Center(
                        child: Container(
                          color: Colors.blue,
                          width: constraints.maxWidth * 0.8,
                          height: constraints.maxHeight / 2,
                          child: const Text("Layout Builder Example"),
                        ),
                      );
                    }),
                  ),
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("clicked"),
            child: const Icon(Icons.ac_unit)),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: size.height / 5,
      child: const Center(
        child: Text("MediaQuery Example"),
      ),
    );
  }
}
```

## Widgets - Buttons
<img width="300" alt="スクリーンショット 2023-04-06 14 58 16" src="https://user-images.githubusercontent.com/47273077/230284584-f27c7896-808e-481e-8a52-cf56fc0610de.png">

```dart
lass ButtonExamples extends StatelessWidget {
  const ButtonExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onLongPress: () {
              print("LongPress pressed");
            },
            onPressed: () {
              print("TextButton pressed");
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Text Button",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            )),
        IconButton(
            onPressed: () {
              print("icon pressed");
            },
            icon: const Icon(Icons.play_arrow)),
        Switch(
            value: true,
            onChanged: (value) {
              print(value);
            })
      ],
    );
  }
}
```


