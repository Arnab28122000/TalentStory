import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:TalentBook/Screen1.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: UIAnim(),
      seconds: 8,
      image: Image.asset(
        'Assets/logos/logo.png',
        width: 200,
      ),
      loaderColor: Colors.purple,
      photoSize: 220,
      backgroundColor: Colors.white,
      //imageBackground: ,
    );
  }
}
