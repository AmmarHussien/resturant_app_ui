import 'package:flutter/material.dart';

import 'popular_item_card.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 15,
        ),
        child: Row(
          children: const [
            PopulerItemCard(
              image: 'assets/images/burger.png',
              title: 'Hot Burger',
              description: 'Teste Our Hot Burger',
              price: 9.99,
            ),
            PopulerItemCard(
              image: 'assets/images/biryani.png',
              title: 'Biryani',
              description: 'Teste Our Hot Biryani',
              price: 19.99,
            ),
            PopulerItemCard(
              image: 'assets/images/pizza.png',
              title: 'Pizza',
              description: 'Teste Our Hot Pizza',
              price: 14.99,
            ),
            PopulerItemCard(
              image: 'assets/images/salan.png',
              title: 'Salan',
              description: 'Teste Our Hot Salan',
              price: 9.99,
            ),
            PopulerItemCard(
              image: 'assets/images/drink.png',
              title: 'Drink',
              description: 'Teste Our Cold Drink',
              price: 9.99,
            ),
          ],
        ),
      ),
    );
  }
}
