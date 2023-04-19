import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/box_shadow.dart';

class OrderCardItem extends StatelessWidget {
  const OrderCardItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.numberOfItems,
  });
  final String image, title, description;
  final double price;
  final int numberOfItems;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 9,
      ),
      child: Container(
        width: size.width * 0.95,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            boxShadoow(),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                height: 80,
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '$description\n',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: '\$ $price',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    ),
                    Text(
                      '$numberOfItems',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
