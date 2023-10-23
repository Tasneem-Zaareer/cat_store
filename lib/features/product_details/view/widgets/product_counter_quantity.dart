import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../cart/controller/cart_controller.dart';
import 'package:get/get.dart';

class ProductCounterQuantity extends StatelessWidget {
  ProductCounterQuantity({
    super.key,
  });

  AddToCartController quantityController = Get.put(AddToCartController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //remove icon
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(3),
          ),
          child: GestureDetector(
              onTap: () {
                quantityController.decrementProductQuantity();
              },
              child: const Icon(Icons.remove)),
        ),
        //quantity
        GetBuilder<AddToCartController>(
          init: AddToCartController(),
          builder: (controller) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text('${controller.quantityCounter}'),
          ),
        ),
        // add icon
        Container(
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(3),
          ),
          child: GestureDetector(
            onTap: () {
              quantityController.incrementProductQuantity();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
