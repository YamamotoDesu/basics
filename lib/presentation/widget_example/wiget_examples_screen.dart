import 'package:basics/presentation/widget_example/widgets/button_example.dart';
import 'package:flutter/material.dart';

import 'widgets/hello_world.dart';
import 'widgets/kyo_yamamoto.dart';
import 'widgets/layout_builder_example.dart';
import 'widgets/media_query_example.dart';
import 'widgets/row_xpanded_example.dart';
import 'widgets/first_column_child.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: const [
                SizedBox(
                  height: 20,
                ),
                RowExpandedExample(),
                FirstColumnChild(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                HelloWorld(),
                SizedBox(
                  height: 20,
                ),
                KyoYamamoto(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MediaQueryExample(),
                SizedBox(
                  height: 40,
                ),
                LayoutBuilderExample(),
                SizedBox(
                  height: 40,
                ),
                ButtonExamples()
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("clicked"),
          child: const Icon(Icons.ac_unit)),
    );
  }
}
