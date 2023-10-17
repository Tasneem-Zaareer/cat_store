import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/product_details/view/widgets/fav_Icon_button.dart';
import 'package:cat_shop/features/product_details/view/widgets/product_counter_quantity.dart';
import 'package:cat_shop/features/product_details/view/widgets/product_description.dart';
import 'package:cat_shop/features/product_details/view/widgets/product_image.dart';
import 'package:cat_shop/features/product_details/view/widgets/review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/button.dart';
import '../../shop/controller/shop_models.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Shop product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: kFontColor),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          FavIconButton(product: product),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImage(product: product),
                  const SizedBox(height: 25),
                  //product name + quantity
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Product Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      ProductCounterQuantity(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Reviews(),
                  const SizedBox(height: 15),
                  //price
                  const Text(
                    '\$39.80',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const ProductDescription(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //add to cart button
            const AppButton(
              text: 'Add to Cart',
              height: 0.065,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}


