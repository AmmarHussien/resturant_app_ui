import 'package:flutter/material.dart';

import '../../../constant/box_shadow.dart';
import 'newst_card_item_data.dart';

class NewestCard extends StatelessWidget {
  const NewestCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.press,
    required this.ratingNum,
  });

  final String image, title, description;
  final double price, ratingNum;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {
          press();
        },
        child: Container(
          width: 380,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              boxShadoow(),
            ],
          ),
          child: CardItemData(
            image: image,
            title: title,
            description: description,
            price: price,
            press: press,
            ratingNum: ratingNum,
          ),
        ),
      ),
    );
  }
}
