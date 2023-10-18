import 'package:cat_shop/features/wishlist/controller/wishlist_controller.dart';
import 'package:cat_shop/features/wishlist/view/widgets/empty_wishlist_view.dart';
import 'package:cat_shop/features/wishlist/view/widgets/full_wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistView extends StatelessWidget {
  WishlistView({super.key});

  //final WishlistController wishlistController = WishlistController();
  final WishlistController wishlistController = Get.put(WishlistController());


  @override
  Widget build(BuildContext context) {
    print(' wishlistController.wishList.length');
    print(wishlistController.wishList.length);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GetBuilder<WishlistController>(
            builder: (wishlistController) => wishlistController.wishList.isNotEmpty
                ? FullWishList()
                : const EmptyWishlistView(),

            //FullWishList(),
          ),
        ),
      ),
    );
  }
}
