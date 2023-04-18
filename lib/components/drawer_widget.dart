import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_menu_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text(
                "Ammar Hussien",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'ammar.hussienmo97@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          DrawerMenuItem(
            icon: CupertinoIcons.home,
            text: 'Home',
          ),
          DrawerMenuItem(
            icon: CupertinoIcons.person,
            text: 'Profile',
          ),
          DrawerMenuItem(
            icon: CupertinoIcons.cart_fill,
            text: 'Orders',
          ),
          DrawerMenuItem(
            icon: CupertinoIcons.heart_fill,
            text: 'Wish List',
          ),
          DrawerMenuItem(
            icon: CupertinoIcons.settings,
            text: 'Setting',
          ),
          DrawerMenuItem(
            icon: Icons.logout,
            text: 'Log Out',
          ),
        ],
      ),
    );
  }
}
