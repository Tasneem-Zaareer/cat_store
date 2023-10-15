import 'package:cat_shop/features/shop/controller/list.dart';
import 'package:cat_shop/features/shop/view/widgets/header_home.dart';
import 'package:cat_shop/features/shop/view/widgets/products_grid_view.dart';
import 'package:cat_shop/features/shop/view/widgets/products_list_view.dart';
import 'package:flutter/material.dart';

import '../../tab_bar/tab_bar.dart';

class AllView extends StatelessWidget implements PreferredSizeWidget {
  const AllView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return
     SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              const Header(),
              const SizedBox(height: 20),
              //best seller list view of products
              ProductsListView(productsList: bestSellerList,),
              const SizedBox(height: 20),
              //all products grid view
               ProductsGridView(productsList: allProductsList,),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );

  }
}
