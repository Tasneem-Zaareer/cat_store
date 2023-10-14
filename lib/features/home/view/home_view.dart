import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';
import '../../tab_bar/tab_bar.dart';

class HomeView extends StatelessWidget implements PreferredSizeWidget {
  const HomeView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      //drawer
      drawer: const Drawer(),
      //app bar
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
      body: TabBarViews(),
    );
  }
}
