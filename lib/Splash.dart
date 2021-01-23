import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:TalentBook/Screen1.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: UIAnim(),
      seconds: 4,
      image: Image.asset(
        'Assets/logos/logo.png',
      ),
      loaderColor: Colors.purple,
      photoSize: 150,
      backgroundColor: Colors.black87,
    );
  }
}
