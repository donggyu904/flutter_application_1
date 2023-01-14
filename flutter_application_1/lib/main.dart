import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/bora_home_page.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      // home: const BoraHomePage(),
      home: MYHomePage(),
    );
  }
}
