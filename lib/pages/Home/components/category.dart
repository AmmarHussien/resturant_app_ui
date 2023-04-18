import 'package:flutter/material.dart';

import 'category_item_card.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: Row(
          children: const [
            CategoriesItemsCard(
              image: 'assets/images/drink.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/burger.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/biryani.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/pizza.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/salan.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/drink.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/burger.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/biryani.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/pizza.png',
            ),
            CategoriesItemsCard(
              image: 'assets/images/salan.png',
            ),
          ],
        ),
      ),
    );
  }
}
