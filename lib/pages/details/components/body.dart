import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/components/app_bar_widget.dart';
import 'package:restaurant_app_ui/components/drawer_widget.dart';
import 'package:restaurant_app_ui/pages/details/components/item_nav_bar.dart';

import '../../Home/components/rating.dart';
import 'body_discription.dart';
import 'header_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5,
        ),
        child: ListView(
          children: const [
            AppBarWidget(),
            HeaderImage(),
            BodyDiscription(),
          ],
        ),
      ),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
