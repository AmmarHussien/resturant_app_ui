
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'rating.dart';

class CardItemData extends StatelessWidget {
  const CardItemData({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.press,
  });

  final String image, title, description;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            press();
          },
          child: Image.asset(
            image,
            height: 120,
            width: 150,
          ),
        ),
        SizedBox(
          width: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '$description\n',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: '\$ $price',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              const RatingBarStar(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 26,
              ),
              Icon(
                CupertinoIcons.cart,
                color: Colors.red,
                size: 26,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
