import 'package:TalentBook/Splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff3f08a6))),
    home: splash(),
    //darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
  // runApp(App());
}
