import 'package:cat_shop/features/product_details/controller/wishlist_controller.dart';
import 'package:cat_shop/features/wishlist/view/widgets/empty_wishlist_view.dart';
import 'package:cat_shop/features/wishlist/view/widgets/full_wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Get.put(WishlistController()).isWishlistEmpty
              ? const EmptyWishlistView()
              : const FullWishList(),
        ),
      ),
    );
  }
}
