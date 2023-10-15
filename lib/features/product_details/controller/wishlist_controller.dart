import 'package:get/get.dart';

import '../../shop/model/shop_models.dart';

class WishlistController extends GetxController{

  bool isWishlistEmpty = true;
  List wishList = [];

  void addToWishlist (Shop item){
    wishList.add(item);
    isWishlistEmpty = false;
    update();
  }

}