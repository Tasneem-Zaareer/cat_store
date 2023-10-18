import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        //intro text
        const Text(
          'Pick up\nYour items',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.only(top: 20, left: 35, right: 10),
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi there!',
                    style: TextStyle(
                      color: kBottomTextColor,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                    child: Text(
                      'You can choose what ever you want!',
                      style: TextStyle(
                        color: kBottomTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/0.png',
                    height: MediaQuery.of(context).size.height * 0.175,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
