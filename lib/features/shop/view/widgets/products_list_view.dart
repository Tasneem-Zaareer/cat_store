import 'package:cat_shop/features/shop/view/widgets/products_list_view_tile.dart';
import 'package:cat_shop/features/shop/view/widgets/section_title.dart';
import 'package:flutter/material.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Best Seller'),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //itemExtent: 100,
              itemCount: 5,
              itemBuilder: (context, index) => const ProductsListViewTile(),
            ),
          ),
        ],
      ),
    );
  }
}
