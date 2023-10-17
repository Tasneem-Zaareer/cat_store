import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_rate,
          color: Colors.yellow,
        ),
        Text(
          '4.9',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(430 Reviews)',
          style: TextStyle(
            color: Color(0xff8d9fa9),
          ),
        ),
      ],
    );
  }
}