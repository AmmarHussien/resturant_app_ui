import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_in_app_bar.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconInAppBar(
            icon: CupertinoIcons.bars,
            press: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          IconInAppBar(
            icon: Icons.notifications,
            press: () {},
          ),
        ],
      ),
    );
  }
}
