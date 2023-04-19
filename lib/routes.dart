import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/pages/cart/cart_screen.dart';
import 'package:restaurant_app_ui/pages/details/details_screen.dart';

import 'pages/Home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};
