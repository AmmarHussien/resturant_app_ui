import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final IconData icon;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        press();
      },
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
