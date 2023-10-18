import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../shop/controller/shop_models.dart';
import '../../../wishlist/controller/wishlist_controller.dart';
import 'package:get/get.dart';

class FavIconButton extends StatelessWidget {
  FavIconButton({super.key, required this.product});

  final Shop product;
  final WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WishlistController>(
      //init: WishlistController(),
      builder: (wishlistController) => IconButton(
        onPressed: () {
          //wishlistController.changeWishlist();
          wishlistController.isItemInWishlist
              ? wishlistController.removeFromWishlist(product)
              : wishlistController.addToWishlist(product);
        },
          icon: wishlistController.isItemInWishlist
            ? Icon(
                Icons.favorite,
                color: kWishlistIcon,
              )
            : Icon(
                Icons.favorite_border_rounded,
                color: kFontColor,
              ),

      ),
    );
  }
}
