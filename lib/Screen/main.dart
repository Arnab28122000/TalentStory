import 'package:TalentBook/Authentication/Login_Screen.dart';
import 'package:TalentBook/Authentication/OTP_Screen.dart';
import 'package:TalentBook/Authentication/Signup.dart';
import 'package:TalentBook/Authentication/forgotpassword.dart';
import 'package:TalentBook/Chatscreen.dart';
import 'package:TalentBook/RefScreens/Connector.dart';
import 'package:TalentBook/RefScreens/First.dart';
import 'package:TalentBook/RefScreens/Language.dart';
import 'package:TalentBook/RefScreens/Second.dart';
import 'package:TalentBook/RefScreens/tileCirriculum.dart';
import 'package:TalentBook/Screen/Profile.dart';
import 'package:TalentBook/Screen/SchoolManagement.dart';
import 'package:TalentBook/Screen/Teacher.dart';
import 'package:TalentBook/Screen/arts.dart';
import 'package:TalentBook/Screen/createtask.dart';
import 'package:TalentBook/Screen/homescreen.dart';
import 'package:TalentBook/Screen/mission.dart';
import 'package:TalentBook/Screen/myarts.dart';
import 'package:TalentBook/Screen/mysports.dart';
import 'package:TalentBook/Screen/myyoga.dart';
import 'package:TalentBook/Screen/reviews.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:TalentBook/Splash.dart';
import 'package:TalentBook/sports.dart';
import 'package:TalentBook/students.dart';
import 'package:TalentBook/yoga.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff3f08a6))),
    home: UIAnim(),
    //darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
  // runApp(App());
}
