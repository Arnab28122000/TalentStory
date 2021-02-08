import 'package:TalentBook/Authentication/Login_Screen.dart';
import 'package:TalentBook/RefScreens/First.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:TalentBook/Screen1.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: LoginScreen(),
      seconds: 8,
      image: Image.asset(
        'Assets/logos/logo.png',
        // width: 400,
      ),
      loaderColor: Colors.purple,
      photoSize: 150,
      backgroundColor: Colors.white,
      //imageBackground: ,
    );
  }
}
