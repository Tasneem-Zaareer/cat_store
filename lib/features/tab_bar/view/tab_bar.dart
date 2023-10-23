import 'package:cat_shop/features/shop/view/all_view.dart';
import 'package:cat_shop/features/shop/view/food_view.dart';
import 'package:cat_shop/features/shop/view/tools_view.dart';
import 'package:cat_shop/features/tab_bar/view/widgets/tab_style.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../shop/view/home_view.dart';
import '../../shop/view/games_view.dart';

class MyTabBar extends StatelessWidget implements HomeView {
  const MyTabBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(30);

  @override
  Widget build(BuildContext context) {
    List<Widget> tabsList = [
      TabStyle(text: 'All'),
      TabStyle(text: 'Food'),
      TabStyle(text: 'Tools'),
      TabStyle(text: 'Games'),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,),
      child: TabBar(
        unselectedLabelColor: Colors.grey[500],
        labelColor: Colors.white,
        indicatorColor: kPrimaryColor,
        // isScrollable: true,
        //indicatorWeight: 10,
        indicator: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        tabs: tabsList,
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

      ],
    );
  }
}
// List<Widget> tabsList = [
//   TabStyle(text: 'All'),
//   TabStyle(text: 'Food'),
//   TabStyle(text: 'Tools'),
//   TabStyle(text: 'Games'),
//
// ];

