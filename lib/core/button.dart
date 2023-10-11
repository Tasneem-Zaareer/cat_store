import 'package:flutter/material.dart';

import '../constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
