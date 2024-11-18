import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart'; 

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/HealthEaseLogo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/HealthEase.png',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
