import 'package:flutter/material.dart';
import 'package:week_6_navigation_vacation/screens/details_screen.dart';
import 'package:week_6_navigation_vacation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/details': (context) => const DetailScreen(),
    });
  }
}
