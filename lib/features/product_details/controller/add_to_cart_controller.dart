import 'package:get/get.dart';

class AddToCartController extends GetxController{

  int quantityCounter = 0;

  void incrementProductQuantity(){
    quantityCounter++;
    update();
  }

  void decrementProductQuantity(){
    if(quantityCounter >0) {
      quantityCounter-- ;
    }
    update();
  }

}