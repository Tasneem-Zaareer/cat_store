import 'package:cat_shop/features/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CatShop());
}

class CatShop extends StatelessWidget {
  const CatShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
          home: SplashScreenView(),
    );
  }
}