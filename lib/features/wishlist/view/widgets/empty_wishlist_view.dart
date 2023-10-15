import 'package:flutter/material.dart';

class EmptyWishlistView extends StatelessWidget {
  const EmptyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/2.png',
            height: 150,
          ),
          const SizedBox(height: 10),
          const Text(
            'Wishlist is Empty',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('Add some items to wish list')
        ],
      ),
    );
  }
}