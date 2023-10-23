import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/bottom_navigation_bar/view/bottom_navigation_bar.dart';
import 'package:cat_shop/features/shop/controller/product_provider.dart';
import 'package:cat_shop/features/splash_screen/view/splash_screen_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return ProductProvider();
      },
      child: const CatShop(),
    ),
  );
}

class CatShop extends StatelessWidget {
  const CatShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cat Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.rubikTextTheme().apply(bodyColor: kFontColor),
      ),
      home: const SplashScreenView(),
      // home: const BottomNavigationBarApp(),
    );
  }
}
