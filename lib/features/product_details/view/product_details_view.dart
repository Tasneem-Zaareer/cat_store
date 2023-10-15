import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/button.dart';
import '../../shop/model/shop_models.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Shop product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: kFontColor),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: kPrimaryColor,
            ),
          ),
          // Icon(Icons.favorite_border_rounded),
          //Image.asset('assets/images/heart.png',width: 20,),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //product image
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Center(
                      child: Image.asset(
                        product.imagePath,
                        height: 200,
                      ),
                    ),
                  ),
                  //product name + quantity
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Product Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text('0'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  //review
                  const Row(
                    children: [
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(430 Reviews)',
                        style: TextStyle(
                          color: Color(0xff8d9fa9),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  //price
                  const Text(
                    '\$39.80',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  //details
                  Expanded(
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //add to cart button
            const AppButton(
              text: 'Add to Cart',
              height: 0.065,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
