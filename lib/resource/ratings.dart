import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  final int rating;
  Ratings({required this.rating, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Rating stars
        for (int i = 0; i < rating; i++)
          Padding(
            padding: i == 0
                ? const EdgeInsets.only(right: 3)
                : const EdgeInsets.symmetric(horizontal: 3),
            child: Icon(
              Icons.star,
              size: 20,
              color: Colors.amber[700],
            ),
          ),

        //Empty stars
        for (int i = rating; i < 5; i++)
          Padding(
            padding: i == 0
                ? const EdgeInsets.only(right: 3)
                : const EdgeInsets.symmetric(horizontal: 3),
            child: Icon(
              Icons.star,
              size: 20,
              color: Colors.grey[300],
            ),
          ),
      ],
    );
  }
}
