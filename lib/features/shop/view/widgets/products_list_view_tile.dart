import 'package:cat_shop/features/product_details/view/product_details_view.dart';
import 'package:flutter/material.dart';

import '../../model/shop_models.dart';

class ProductsListViewTile extends StatelessWidget {
  const ProductsListViewTile({super.key, required this.product});

  final Shop product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetailsView(product: product,);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff5f1f1),
              ),
              width: MediaQuery.of(context).size.width * .27,
              child: Image.asset(
                product.imagePath,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
