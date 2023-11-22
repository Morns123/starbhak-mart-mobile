import 'package:flutter/material.dart';
import 'package:starbhak_mart/splashGif.dart';
// import 'package:starbhak_mart/splashPng.dart';

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
      home: SplashGIF(),
    );
  }
}
