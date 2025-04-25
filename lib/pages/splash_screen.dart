import 'dart:async';
import 'package:flutter/material.dart';
import 'package:baber_app/pages/home.dart';
import 'package:baber_app/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFB91635), // Deep red
              Color(0xff621d3c), // Burgundy
              Color(0xff311937), // Dark purple
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logoo.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 20),
              CircularProgressIndicator(
                color: Colors.white, // Changed to white for better contrast
              ),
            ],
          ),
        ),
      ),
    );
  }
}
