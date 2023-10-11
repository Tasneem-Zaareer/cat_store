import 'package:cat_shop/features/home/widgets/products_list_view_tile.dart';
import 'package:flutter/material.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 500,
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //itemExtent: 100,
        itemCount: 5,
        itemBuilder: (context, index) => const ProductsListViewTile(),
      ),
    );
  }
}
