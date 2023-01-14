import 'package:flutter/material.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

void main() {
  runApp(const MyApp());
}

int _index = 2;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //assets/image/image.png
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Page1(),
    );
  }
}
