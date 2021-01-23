import 'package:TalentBook/RefScreens/First.dart';
import 'package:TalentBook/RefScreens/Language.dart';
import 'package:TalentBook/RefScreens/Second.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:TalentBook/Screens/Login_Screen.dart';
import 'package:TalentBook/Splash.dart';
import 'package:TalentBook/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(home: splash()));
  // runApp(App());
}
