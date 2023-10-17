import 'package:cat_shop/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import '../../shop/controller/shop_models.dart';

class WishlistController extends GetxController {
  bool isItemInWishlist = false;

  List wishList = [];

  void addToWishlist(Shop item) {
    wishList.add(item);
    isItemInWishlist = true;
    Get.snackbar(
      "Added to Wishlist",
      "Product added to your wishlist",
      colorText: kFontColor,
      //snackPosition: SnackPosition.BOTTOM,
      //backgroundColor: kSecondaryColor,
      //duration: const Duration(seconds: 2),
    );
    update();
  }

  void removeFromWishlist(Shop item) {
    wishList.remove(item);
    isItemInWishlist = false;
    update();
  }
}
