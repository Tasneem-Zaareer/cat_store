import 'package:cat_shop/features/shop/view/all_view.dart';
import 'package:cat_shop/features/shop/view/food_view.dart';
import 'package:cat_shop/features/shop/view/tools_view.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../home/view/home_view.dart';
import '../shop/view/games_view.dart';

class MyTabBar extends StatelessWidget implements HomeView{
  const MyTabBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(30);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TabBar(
        unselectedLabelColor: kFontColor,
        isScrollable: true,
        indicatorWeight: 10,
        indicator: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50),
        ),

        tabs: const [
          Text('All'),
          Text('Food'),
          Text('Tools'),
          Text('Games'),
          Text('Games'),
          Text('Games'),
          Text('Games'),

        ],
      ),
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
        FoodView(),
        ToolsView(),
        GamesView(),
        GamesView(),
        GamesView(),
        GamesView(),
      ],
    );
  }
}
