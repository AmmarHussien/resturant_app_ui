import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/pages/cart/cart_screen.dart';

import '../constant/box_shadow.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        boxShadow: [
          boxShadoow(),
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).pushNamed(CartScreen.routeName);
        },
        child: const Icon(
          CupertinoIcons.cart,
          size: 28,
          color: Colors.red,
        ),
      ),
    );
  }
}
