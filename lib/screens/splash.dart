import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), ()=>Navigator.push(context, MaterialPageRoute(
        builder:(context)=>Home())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fitHeight,
            image: AssetImage("assets/images/splash.png"),
          )
        )
      ),
    );
  }
}
