import 'package:cat_shop/features/splash_screen/view/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff59158),
      body: SplashScreenBody(),
    );
  }
}
