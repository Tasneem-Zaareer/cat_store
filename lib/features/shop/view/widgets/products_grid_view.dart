import 'package:cat_shop/features/shop/controller/list.dart';
import 'package:cat_shop/features/shop/view/widgets/products_list_view_tile.dart';
import 'package:cat_shop/features/shop/view/widgets/section_title.dart';
import 'package:flutter/material.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.productsList});
  final List productsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'All Products'),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          //disable grid view scrolling
          physics: const ScrollPhysics(),
          //scrollDirection: Axis.vertical,
          children: List.generate(
           productsList.length,
            (index) => ProductsListViewTile(
              product: productsList[index],
            ),
          ),
        ),
      ],
    );
  }
}
