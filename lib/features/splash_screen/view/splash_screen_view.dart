import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/splash_screen/view/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const SplashScreenBody(),
    );
  }
}
