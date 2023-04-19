import 'package:flutter/material.dart';

import '../../Home/components/rating.dart';

class HeaderOfBody extends StatelessWidget {
  const HeaderOfBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        RatingBarStar(
          ratingNum: 5,
        ),
        Text(
          '\$ 14.99',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}