import 'package:flutter/material.dart';

class ProductsListViewTile extends StatelessWidget {
  const ProductsListViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: 40,
          width: MediaQuery.of(context).size.width * .27,
          child: Image.asset('assets/images/2.png'),
        ),
      ],
    );
  }
}
