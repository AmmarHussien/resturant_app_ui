import 'package:flutter/material.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routeName = '/Cart';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
