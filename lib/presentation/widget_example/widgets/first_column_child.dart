import 'package:flutter/material.dart';

class FirstColumnChild extends StatelessWidget {
  const FirstColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green, child: const Text("First Column child"));
  }
}
