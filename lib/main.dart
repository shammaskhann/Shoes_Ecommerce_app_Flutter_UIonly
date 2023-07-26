import 'package:e_commerce_shop_page/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:  const TextTheme(
          displayLarge: TextStyle(color: Color.fromARGB(255, 243, 101, 90) ,fontSize: 30, fontWeight: FontWeight.bold ,decoration: TextDecoration.underline),
          displayMedium: TextStyle(color: Colors.red),
          displaySmall: TextStyle(color: Colors.red),
        )
      ),
      home: SplashScreen(),
    );
  }
}

