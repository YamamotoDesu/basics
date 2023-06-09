import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/compnents/custom_button.dart';
import 'package:basics/presentation/widget_example/widgets/button_example.dart';
import 'package:basics/presentation/widget_example/widgets/person.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowExpandedExample(),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const KyoYamamoto(),
              const Person(
                  age: '28',
                  country: 'Japan',
                  job: 'Fleancer for Mobile',
                  name: 'Kyo',
                  pictureUrl:
                      'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg'),
              const SizedBox(
                height: 20,
              ),
              const Person(
                  age: '21',
                  country: 'Japan',
                  job: 'a Fleancer for Mobile aaa',
                  name: 'Kyo',
                  pictureUrl:
                      'https://hatrabbits.com/wp-content/uploads/2017/01/random-1200x300.jpg'),
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
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExamples(),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                onTap: () {
                  print("tapped");
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
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
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.ac_unit)),
    );
  }
}
