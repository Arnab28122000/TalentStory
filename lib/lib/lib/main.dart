import 'package:flutter/material.dart';
import 'package:talentbook/arts.dart';
import 'package:talentbook/mission.dart';
import 'package:talentbook/sports.dart';
import 'package:talentbook/yoga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sports(),
    );
  }
}
