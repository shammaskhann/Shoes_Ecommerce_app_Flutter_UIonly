import 'package:e_commerce_shop_page/ui/shop.dart';
import 'package:flutter/material.dart';

import 'NavScreen.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  NavScreen())); //MyHomePage(title: "E-Commerce App",)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 350,
        width: 350,
        child: Image.asset(
          "assets/images/splash.png",
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
        ),
      )),
      backgroundColor: Color.fromARGB(255, 19, 19, 19),
    );
  }
}
