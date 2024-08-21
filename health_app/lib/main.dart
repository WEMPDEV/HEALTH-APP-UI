import 'package:flutter/material.dart';
import 'package:health_app/pages/bottomNavbars.dart';
import 'package:health_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage1(),
      home: trackitnavbars(username: 'Jarred'),
    );
  }
}