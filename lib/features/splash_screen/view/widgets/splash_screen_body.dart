import 'dart:async';
import 'package:cat_shop/features/bottom_navigation_bar/view/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  // Offset is for :
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    slidingAnimationMethode();
    timerPageNavigator();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'C a t y',
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          AnimatedBuilder(
            animation: slidingAnimation,
            // builder: (BuildContext context, Widget? child)
            builder: (context, _) {
              //position will be the slideAnimation
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'All you need for your cat',
                  style: TextStyle(
                    color: Colors.white,
                    //fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void slidingAnimationMethode() {
    //initialize animation controller - remember to add  with SingleTickerProviderStateMixin
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  Timer timerPageNavigator() {
    return Timer(
      const Duration(seconds: 3),
      () {
        Get.to(()=>const BottomNavigationBarApp());
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (_) => const BottomNavigationBarApp(),
        //   ),
        // );
      },
    );
  }
}
