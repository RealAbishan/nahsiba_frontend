import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/pages/NavPages/home_page.dart';
import 'package:nahsiba/pages/main_page.dart';
import 'package:nahsiba/pages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MainPage())));

    //   var assetsImage = const AssetImage(
    //     '/assets/Logos/AllGreen.png'); //<- Creates an object that fetches an image.
    var image = Image.asset('assets/Logo_Red.png',
        height: 250,
        fit: BoxFit.scaleDown); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: bWhite),
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
