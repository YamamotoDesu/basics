import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
