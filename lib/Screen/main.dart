import 'package:TalentBook/RefScreens/error.dart';
import 'package:TalentBook/Screen/homescreen.dart';
import 'package:TalentBook/Screen/notificationUI.dart';
import 'package:TalentBook/Screen/post.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:TalentBook/Splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff3f08a6))),
    home: PostPage(),
    //darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
  // runApp(App());
}
