
import 'package:flutter/material.dart';

import '../../../constant/box_shadow.dart';

class CategoriesItemsCard extends StatelessWidget {
  const CategoriesItemsCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            boxShadoow(),
          ],
        ),
        child: Image.asset(
          image,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
