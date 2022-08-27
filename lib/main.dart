import 'package:dejuretask/screens/chat.dart';
import 'package:dejuretask/screens/helo.dart';
import 'package:dejuretask/screens/home.dart';
import 'package:dejuretask/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
