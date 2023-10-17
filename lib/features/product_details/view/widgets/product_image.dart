import 'package:flutter/material.dart';

import '../../../shop/controller/shop_models.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final Shop product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Center(
        child: Image.asset(
          product.imagePath,
          height: 200,
        ),
      ),
    );
  }
}
