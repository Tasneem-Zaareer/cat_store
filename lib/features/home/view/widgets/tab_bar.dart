import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return                 const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Food'),
        Text('Tools'),
        Text('Games'),
      ],
    );
  }
}
