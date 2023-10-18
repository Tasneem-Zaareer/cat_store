import 'package:cat_shop/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import '../../shop/controller/shop_models.dart';
import 'package:flutter/material.dart';

class WishlistController extends GetxController {
  bool isItemInWishlist = false;

  List wishList = [];

  void addToWishlist(Shop item) {
    wishList.add(item);
    isItemInWishlist = true;
    Get.snackbar(
      "Added to Wishlist",
      "Product added to your wishlist",
      colorText: kFontColor,
      //snackPosition: SnackPosition.BOTTOM,
      //backgroundColor: Colors.greenAccent[100],
      //duration: const Duration(seconds: 2),
    );
    update();
  }

  void removeFromWishlist(Shop item) {
    wishList.remove(item);
    isItemInWishlist = false;
    Get.snackbar(
      "Removed From Wishlist",
      "Product removed from your wishlist",
      colorText: kFontColor,
      //snackPosition: SnackPosition.BOTTOM,
      //backgroundColor: Colors.pink[100],
      //duration: const Duration(seconds: 2),
    );
    update();
  }
}
