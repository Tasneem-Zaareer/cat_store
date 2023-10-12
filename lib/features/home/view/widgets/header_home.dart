import 'package:flutter/material.dart';

import '../../../../constants.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //intro text
        const Text(
          'Pick up\nYour items',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.only(top: 25,left: 25,right: 10),

          height: MediaQuery.of(context).size.height * .23,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi there!',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Text(
                  'You can choose what ever you want!',
                  style: TextStyle(
                    color: kSecondaryColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/2.png',
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
              ],
            ),
          ],
        ),
      ),]
    );
  }
}
