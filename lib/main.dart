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
