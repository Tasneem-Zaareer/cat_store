import 'package:cat_shop/features/shop/view/all_view.dart';
import 'package:cat_shop/features/shop/view/tools_view.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../home/view/home_view.dart';

class MyTabBar extends StatelessWidget implements HomeView{
  const MyTabBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(30);

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
        Text('All'),
        Text('Tools'),
        Text('Games'),
        // Text('Food'),
        // Text('Others'),
        // Text('Others'),
        // Text('Others'),
      ],
    );
  }
}

class TabBarViews extends StatelessWidget {
  const TabBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        AllView(),
        ToolsView(),
        ToolsView(),
      ],
    );
  }
}
