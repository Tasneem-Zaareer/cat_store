import 'package:flutter/material.dart';

import '../../constants.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      //labelColor: kFontColor,
      unselectedLabelColor: kFontColor,
      isScrollable: true,
      indicatorWeight: 10,
      indicator: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(50),

      ),

      tabs: const [
        Text('Food'),
        Text('Tools'),
        Text('Games'),
        Text('Others'),
        Text('Others'),
        Text('Others'),
        Text('Others'),

      ],
    );
  }
}
