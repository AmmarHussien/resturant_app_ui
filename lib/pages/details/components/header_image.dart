
import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        16,
      ),
      child: Image.asset(
        'assets/images/burger.png',
        height: 300,
        width: double.infinity,
      ),
    );
  }
}