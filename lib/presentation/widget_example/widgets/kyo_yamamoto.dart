

import 'package:flutter/material.dart';

class KyoYamamoto extends StatelessWidget {
  const KyoYamamoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}