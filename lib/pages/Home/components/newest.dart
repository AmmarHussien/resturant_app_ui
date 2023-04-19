import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newest_card.dart';

class NewestWidget extends StatelessWidget {
  const NewestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            NewestCard(
              image: 'assets/images/pizza.png',
              title: 'Hot Pizza',
              description: 'Teste Our Hot Pizza, we Provide Our Greate Foods',
              price: 14.99,
              ratingNum: 3,
              press: () {},
            ),
            NewestCard(
              image: 'assets/images/salan.png',
              title: 'Hot Slan',
              description: 'Teste Our Hot Salan, we Provide Our Greate Foods',
              price: 9.99,
              ratingNum: 1,
              press: () {},
            ),
            NewestCard(
              image: 'assets/images/burger.png',
              title: 'Hot Burger',
              description: 'Teste Our Hot Burger, we Provide Our Greate Foods',
              price: 9.99,
              ratingNum: 5,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
