import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shop/model/shop_models.dart';

class WishlistController extends GetxController {
  bool isItemInWishlist = false;
  List <Shop> wishList = [];
  //List <Shop> testList = List.from(allProductsList);


  void addToWishlist(Shop item, bool isItemInMyWishlist) {
    item.inWishlist = isItemInMyWishlist;
    wishList.add(item);
    isItemInWishlist = true;
    Get.snackbar(
      "Added to Wishlist",
      "Product added to your wishlist",
      colorText: kFontColor,
      //isDismissible: false,
      icon: Icon(Icons.favorite,color: kWishlistIcon,),
      //snackPosition: SnackPosition.BOTTOM,
      //backgroundColor: Colors.greenAccent[100],
      //duration: const Duration(seconds: 2),
    );
    update();
  }

  void removeFromWishlist(Shop item, bool isItemInMyWishlist) {
    item.inWishlist = isItemInMyWishlist;
    wishList.remove(item);
    //wishList.removeWhere((element) => element.productID == item.productID);
    //isItemInWishlist = false;
    Get.snackbar(
      "Removed From Wishlist",
      "Product removed from your wishlist",
      colorText: kFontColor,
      icon: const Icon(Icons.favorite_border_rounded),
      //snackPosition: SnackPosition.BOTTOM,
      //backgroundColor: Colors.pink[100],
      //duration: const Duration(seconds: 2),
    );
    update();
  }


  // void checkItemInWishlist2(Shop item){
  //   if (wishList.isEmpty){
  //     print('empty - add');
  //     addToWishlist(item);
  //   }
  //   //wishList.removeWhere((element) => element.productID == item.productID);
  // }

  // void checkItemInWishlist(Shop item){
  //   print('fun');
  //   //bool test = wishList.where((element) => element.productID == item.productID) as bool;
  //   // for(int i =0; i<=wishList.length;i++){
  //
  //     if (wishList.isEmpty){
  //       print('empty - add');
  //       addToWishlist(item);
  //     }
  //     else {
  //       wishList.forEach((element) {
  //         print('for loop');
  //         print('element.productID: ${element.productID}');
  //         print('item.productID: ${item.productID}');
  //
  //         if (element.productID == item.productID) {
  //         //else if(wishList.isNotEmpty){
  //         print('remove');
  //         removeFromWishlist(item);
  //       }
  //
  //       else {
  //         print('add');
  //         addToWishlist(item);
  //       }
  //       });
  //     }
  //
  //
  //     //test == true ? print('remove') : print('add');
  //   }

}