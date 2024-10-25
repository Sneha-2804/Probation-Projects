import 'package:flutter/material.dart';
import 'package:ecommerce_app/Screens/homescreen.dart';
import 'dart:async';
import 'package:ecommerce_app/Components/navbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Navbar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Icon(Icons.shopping_cart_outlined,size: 80,color: Colors.white,),
              SizedBox(height: 20),
              Text(
                'My Store',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
