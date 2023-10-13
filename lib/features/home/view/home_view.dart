import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/home/view/widgets/header_home.dart';
import 'package:cat_shop/features/home/view/widgets/products_grid_view.dart';
import 'package:cat_shop/features/home/view/widgets/products_list_view.dart';
import 'package:flutter/material.dart';

import '../../tab_bar/tab_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            SizedBox(width: 20)
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //header
                Header(),
                SizedBox(height: 20),
                //tab bar
                MyTabBar(),
                SizedBox(height: 20),
                //best seller list view of products
                ProductsListView(),
                SizedBox(height: 20),
                //grid view
                ProductsGridView(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
