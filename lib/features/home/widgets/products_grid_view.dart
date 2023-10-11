import 'package:cat_shop/features/home/widgets/products_list_view_tile.dart';
import 'package:flutter/material.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      //disable grid view scrolling
      physics: const ScrollPhysics(),
      //scrollDirection: Axis.vertical,
      children:
      List.generate(
        6,
        (index) => ProductsListViewTile(),
      ),
    );
  }
}
