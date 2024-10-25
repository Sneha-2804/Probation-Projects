import 'package:flutter/material.dart';
import 'package:ecommerce_app/splash_screen.dart';

void main() {
  runApp(FlutterApp());
} 

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "eCommerce App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
