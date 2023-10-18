import 'package:cat_shop/constants.dart';
import 'package:flutter/material.dart';

class TabStyle extends StatelessWidget {
  const TabStyle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 35,
      child: Container(

        child: Text(
          text,
          style: TextStyle(
            //color: Colors.red,
          ),
        ),
        //child: Image.asset('assets/images/food4.png',height: 50,),
      ),
    );
  }
}
