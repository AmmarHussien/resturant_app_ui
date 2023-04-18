import 'package:flutter/material.dart';

import '../constant/box_shadow.dart';

class IconInAppBar extends StatelessWidget {
  const IconInAppBar({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            boxShadoow(),
          ],
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
