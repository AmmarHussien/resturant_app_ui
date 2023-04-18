import 'package:flutter/material.dart';

import 'pages/Home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
};
