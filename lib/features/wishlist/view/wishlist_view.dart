import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/2.png',
              height: 150,
            ),
            SizedBox(height: 10),
            Text(
              'Wishlist is Empty',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Add some items to wish list')
          ],
        ),
      ),
    );
  }
}
