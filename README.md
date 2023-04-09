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

## Widgets - custom Button
<img width="300" alt="スクリーンショット 2023-04-06 17 25 38" src="https://user-images.githubusercontent.com/47273077/230319451-7209be80-f9c9-404b-aca0-2af04e306762.png">

```dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.yellow, Colors.green])),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.red,
          customBorder: const CircleBorder(),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonGesture extends StatelessWidget {
  final Function() onTap;
  final String text;

  const CustomButtonGesture(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.orange, Colors.lightBlue],
          ),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
```

## Widgets - Real life example

<img width="300" alt="スクリーンショット 2023-04-07 9 24 02" src="https://user-images.githubusercontent.com/47273077/230516426-0cb1d24f-ee15-4a64-961d-1fdb2d67c1cd.png">

```dart
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String age;
  final String country;
  final String job;

  const Person(
      {super.key,
      required this.age,
      required this.country,
      required this.job,
      required this.name,
      required this.pictureUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius:const BorderRadius.vertical(top: Radius.circular(16)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(pictureUrl)),
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white54),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(key: "age", value: age, context: context),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(key: "job", value: job, context: context),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(
                    key: "country", value: country, context: context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            '$key',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        )
      ],
    );
  }
}
```

## Widgets - Switch + Stateful Widget

<img width="300" alt="スクリーンショット 2023-04-07 11 03 29" src="https://user-images.githubusercontent.com/47273077/230525731-3190e897-dce2-4c45-a6d1-1d86c8dc7e7b.png">

```dart
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
          child: Text(
        _counter.toString(),
        style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: _counter > 0 ? Colors.green : Colors.black),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                setState(() {
                  _counter = _counter - 1;
                });
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                setState(() {
                  _counter = _counter + 1;
                });
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Widgets - ListView + Builder

<img width="300" alt="スクリーンショット 2023-04-07 12 00 07" src="https://user-images.githubusercontent.com/47273077/230532328-4cc21c5d-5b0e-493b-b85f-b9f9692bd16f.png">

ListItem.dart
```dart
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;
  const ListItem({super.key, required this.title, required this.index});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text('item number ${widget.index}'),
        leading: Checkbox(
          value: _isSelected,
          onChanged: (value) {
            setState(() {
              _isSelected = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
```

ListScreen.dart
```dart
import 'package:basics/presentation/widget_example/list/widget/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = ['example', 'list', 'with', 'strings'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemCount: example.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 30);
              },
              itemBuilder: (context, index) {
                return ListItem(
                  title: example[index],
                  index: index,
                );
              }),
        ));
  }
}
```

## Navigation - BottomNavBar + IndexedStack
<img width="300" alt="スクリーンショット 2023-04-07 13 34 42" src="https://user-images.githubusercontent.com/47273077/230541501-9a63e6f0-3843-4453-b8c5-ba91f8655c89.png">

root_bottom_navigation.dart
```dart
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
            backgroundColor: Colors.amber,
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
```

## Navigation - basic
<img width="300" alt="スクリーンショット 2023-04-07 13 34 42" src="https://user-images.githubusercontent.com/47273077/230545888-e5668a29-dad1-40d4-b714-b50e6c178ad1.gif">

<img width="300" alt="スクリーンショット 2023-04-07 13 34 42" src="https://user-images.githubusercontent.com/47273077/230545968-afadd452-d587-46f3-aae0-15cf148764f3.gif">

screen_one.dart
```dart
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen One')),
      backgroundColor: Colors.green,
      body: Center(
          child: TextButton(
        child: const Text('Go back'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
```

screen_two.dart
```dart
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
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ScreenOne()));
        },
      )),
    );
  }
}
```

wiget_examples_screen.dart
```dart
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenOne()));
                  },
                  icon: Icons.play_arrow,
                  iconColor: Colors.blue,
                ),
                CustomButtonGesture(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
                    },
                    text: "gesture button"),
```


## Navigation - named Routes

```dart
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
            backgroundColor: Colors.amber,
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
```

wiget_examples_screen.dart
```dart
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/screenOne');
                  },
                  icon: Icons.play_arrow,
                  iconColor: Colors.blue,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonGesture(
                    onTap: () {
                      Navigator.pushNamed(context, '/screenTwo');
                    },
                    text: "gesture button"),
                const SizedBox(
                  height: 40,
```

screen_one.dart
```dart
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen One')),
      backgroundColor: Colors.green,
      body: Center(
          child: TextButton(
        child: const Text('Go back'),
        onPressed: () {
          // Navigator.pop(context);
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      )),
    );
  }
}
```

screen_two.dart
```dart
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
```

## Theme - create and use Theme

```dart
import 'package:flutter/material.dart';

class AppThem {
  AppThem._();

  static const _primaryColorLight = Colors.lightBlueAccent;

  static const _primaryColorDark = Colors.lightGreenAccent;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light));

  static final ThemeData dartTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark));
}
```

main.dart
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThem.lightTheme,
      darkTheme: AppThem.dartTheme,
 ```
 
 ## heme Service - State Management with Provider
 
<img width="300" alt="スクリーンショット 2023-04-08 12 38 35" src="https://user-images.githubusercontent.com/47273077/230701632-e8bcc151-dfdb-4fba-905b-5d0f407d7125.gif">

main.dart
 ```dart
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
```

lib/application/theme_service.dart
```dart
import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}
```

lib/presentation/widget_example/wiget_examples_screen.dart
```dart
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.ac_unit)),
    );
```

## Animations I - Sunrise Sky

<img width="300" alt="スクリーンショット 2023-04-08 17 09 04" src="https://user-images.githubusercontent.com/47273077/230711007-811701b3-2041-4c52-8cb4-dd083e6194b5.png">

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Animation'),
      ),
      body: Consumer<ThemeService>(
        builder: ((context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: themeService.isDarkModeOn? Colors.black87 : Colors.grey,
                        offset: const Offset(0,3),
                        blurRadius: 5,
                        spreadRadius: 7
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: themeService.isDarkModeOn
                            ? const [
                                Color(0xFF94A9FF),
                                Color(0xFF6B66CC),
                                Color(0xFF200F75),
                              ]
                            : const [
                                Color(0xDDFFFA66),
                                Color(0xDDFFA057),
                                Color(0xDD940899),
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? Colors.grey[800]
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  themeService.isDarkModeOn
                                      ? 'To Dark?'
                                      : 'To Briight',
                                  style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  themeService.isDarkModeOn
                                      ? 'let the sun rise'
                                      : 'let it be night ',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Switch(
                                    value: themeService.isDarkModeOn,
                                    onChanged: (_) {
                                      themeService.toggleTheme();
                                    })
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
```

## Animations II - Sunrise Sun, Moon & Stars

<img width="300" alt="スクリーンショット 2023-04-08 17 09 04" src="https://user-images.githubusercontent.com/47273077/230759630-56b20c75-9668-488e-9ccf-8b448cddff71.gif">

theme_animation.dart
```dart
import 'package:basics/application/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/moonstart.dart';
import 'widgets/star.dart';
import 'widgets/sun.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Animation'),
      ),
      body: Consumer<ThemeService>(
        builder: ((context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: themeService.isDarkModeOn
                              ? Colors.black87
                              : Colors.grey,
                          offset: const Offset(0, 3),
                          blurRadius: 5,
                          spreadRadius: 7)
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: themeService.isDarkModeOn
                            ? const [
                                Color(0xFF94A9FF),
                                Color(0xFF6B66CC),
                                Color(0xFF200F75),
                              ]
                            : const [
                                Color(0xDDFFFA66),
                                Color(0xDDFFA057),
                                Color(0xDD940899),
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 70,
                        right: 50,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star()),
                      ),
                      Positioned(
                        top: 150,
                        left: 60,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star()),
                      ),
                      Positioned(
                        top: 40,
                        left: 100,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star()),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star()),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 400),
                        top: themeService.isDarkModeOn ? 100 : 130,
                        right: themeService.isDarkModeOn ? 100 : -40,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Moon()),
                      ),
                      AnimatedPadding(
                        padding: EdgeInsets.only(
                            top: themeService.isDarkModeOn ? 110 : 50),
                        duration: const Duration(milliseconds: 200),
                        child: const Center(
                          child: Sun(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? Colors.grey[800]
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  themeService.isDarkModeOn
                                      ? 'To Dark?'
                                      : 'To Briight',
                                  style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  themeService.isDarkModeOn
                                      ? 'let the sun rise'
                                      : 'let it be night ',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Switch(
                                    value: themeService.isDarkModeOn,
                                    onChanged: (_) {
                                      themeService.toggleTheme();
                                    })
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
```

star.dart
```dart
import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFC9E9FC),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFFC9E9FC).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 0))
          ]),
    );
  }
}
```

moonstart.dart
```dart
import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(0xFF8983F7),
            Color(0xFFA3DAFB),
          ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
    );
  }
}
```

sun.dart
```dart
import 'package:flutter/material.dart';

import 'sun_shine.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160,
      child: SunShine(
        radius: 120,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xDDFC554F),
                  Color(0xDDFFF79E),
                ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
          ),
        ),
      ),
    );
  }
}
```

sun_shine.dart
```dart
import 'package:flutter/material.dart';

class SunShine extends StatelessWidget {
  final double radius;
  final Widget child;
  const SunShine({super.key, required this.child, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
      child: Center(
        child: child,
      ),
    );
  }
  ```
