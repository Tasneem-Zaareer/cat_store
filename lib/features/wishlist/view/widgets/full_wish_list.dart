import 'package:cat_shop/features/wishlist/controller/wishlist_controller.dart';
import 'package:cat_shop/features/wishlist/view/widgets/wishlist_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shop/controller/shop_models.dart';

class FullWishList extends StatelessWidget {
  FullWishList({super.key});

  final WishlistController wishlistController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'My Wishlist',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: GetBuilder<WishlistController>(
            builder: (wishlistController) {
              return ListView.builder(
                itemCount: wishlistController.wishList.length,
                itemBuilder: (context, index) {
                  final Shop product = wishlistController.wishList[index];
                  return WishlistItemTile(item: product);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

// ListView.builder(
// itemCount: 4,
// itemBuilder: (context, index) {
// final Shop product = Shop(
// imagePath: 'assets/images/food2.png',
// productName: '',
// );
// return WishlistItemTile(item: product);
// },
// ),
