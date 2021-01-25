import 'package:flutter/material.dart';

class WarRoom extends StatefulWidget {
  @override
  _WarRoomState createState() => _WarRoomState();
}

class _WarRoomState extends State<WarRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("war room")),
    );
  }
}
