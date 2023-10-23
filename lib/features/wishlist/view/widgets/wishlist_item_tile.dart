import 'package:cat_shop/features/wishlist/controller/wishlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../core/button.dart';
import '../../../shop/model/shop_models.dart';

class WishlistItemTile extends StatelessWidget {
  const WishlistItemTile({super.key, required this.item});

  final Shop item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.only(
          top: 15,
          left: 10,
          right: 10,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          //color: Color(0xfffce2d2),
          color: Color(0xffedf3f1),

          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  item.imagePath,
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                //const SizedBox(width: 10),
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //product name
                    Text('Product Name'),
                    //price
                    Text('\$39.50'),
                    SizedBox(height: 7),
                    AppButton(
                      text: 'Add to Cart',
                      height: 0.05,
                      fontSize: 13,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: kWishlistIcon,
                        size: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}