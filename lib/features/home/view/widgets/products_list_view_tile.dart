import 'package:cat_shop/features/product_details/view/product_details_view.dart';
import 'package:flutter/material.dart';

class ProductsListViewTile extends StatelessWidget {
  const ProductsListViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ProductDetailsView();
                },
              ),
            );
          },
          child: Container(
            //height: 40,
            width: MediaQuery.of(context).size.width * .27,
            child: Image.asset('assets/images/2.png'),
          ),
        ),
      ],
    );
  }
}
