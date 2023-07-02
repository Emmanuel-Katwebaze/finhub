import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user != null) {
          Navigator.of(context).pushReplacementNamed('/dashboard');
        } else {
          Navigator.of(context).pushReplacementNamed('/vision');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    double logicalPixels = 268 / devicePixelRatio;

    return Scaffold(
      backgroundColor: Colors.indigoAccent.shade200.withOpacity(0.75),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ic_launcher.png',
              fit: BoxFit.contain,
              // Adjust the height as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'FIN',
                  style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF2B2B46),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'HUB',
                  style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF2B5BBA),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Grow As One',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
