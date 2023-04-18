import 'package:flutter/material.dart';

import 'pages/Home/home_screen.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
