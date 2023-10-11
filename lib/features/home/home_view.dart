import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/home/widgets/header_home.dart';
import 'package:cat_shop/features/home/widgets/products_grid_view.dart';
import 'package:cat_shop/features/home/widgets/products_list_view.dart';
import 'package:cat_shop/features/home/widgets/products_list_view_tile.dart';
import 'package:cat_shop/features/home/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer
        drawer: const Drawer(),
        //app bar
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: kFontColor),
          actions: const [
            Icon(Icons.notifications_rounded),
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
                //list of products
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
