import 'package:cat_shop/features/wishlist/view/widgets/wishlist_item_tile.dart';
import 'package:flutter/material.dart';

class FullWishList extends StatelessWidget {
  const FullWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text(
          'My Wishlist',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => const WishlistItemTile(),
          ),
        ),
      ],
    );
  }
}