import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';

import '../../core/button.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: kFontColor),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: kPrimaryColor,
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
                  Center(
                    child: Image.asset(
                      'assets/images/2.png',
                      height: 200,
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
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Icon(Icons.add),
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
                    ]),
                  ),
                  //buy now button
                ],
              ),
            ),
            const SizedBox(height: 20),
            const AppButton(
              text: 'Add to Cart',
            ),
          ],
        ),
      ),
    );
  }
}
