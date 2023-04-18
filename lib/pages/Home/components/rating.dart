
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarStar extends StatelessWidget {
  const RatingBarStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      onRatingUpdate: (index) {},
      itemCount: 5,
      itemSize: 18,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
      itemBuilder: (BuildContext context, int index) {
        return const Icon(
          Icons.star,
          color: Colors.red,
        );
      },
    );
  }
}
