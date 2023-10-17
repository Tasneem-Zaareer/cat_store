import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text(
            demoText,
            style: const TextStyle(
              wordSpacing: 2,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
