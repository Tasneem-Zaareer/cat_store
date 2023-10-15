import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';
import '../../bottom_navigation_bar/view/bottom_navigation_bar.dart';
import '../../tab_bar/tab_bar.dart';

class HomeView extends StatelessWidget implements PreferredSizeWidget {
  const HomeView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
          bottom: const MyTabBar(),
        ),
        body: const TabBarViews(),
      ),
    );
  }
}
