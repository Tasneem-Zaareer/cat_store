import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';
import '../../bottom_navigation_bar/view/bottom_navigation_bar.dart';
import '../../tab_bar/view/tab_bar.dart';
import '../../tab_bar/view/widgets/tab_style.dart';

class HomeView extends StatelessWidget implements PreferredSizeWidget {
  const HomeView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    List<Widget> tabsList = [
      TabStyle(text: 'All'),
      TabStyle(text: 'Food'),
      TabStyle(text: 'Tools'),
      TabStyle(text: 'Games'),

    ];
    return DefaultTabController(
      length: tabsList.length,
      child: Scaffold(
        //backgroundColor: Colors.grey,
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: kFontColor),
          actions: const [
            Icon(Icons.notifications_rounded),
            SizedBox(width: 20),
          ],
          bottom: MyTabBar(),
        ),
        body: const TabBarViews(),
      ),
    );
  }
}
