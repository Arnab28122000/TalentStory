//import 'package:coding_class_functionaltiy/UploadDocuments.dart';
import 'package:coding_class_functionaltiy/UploadDocuments.dart';
import 'package:flutter/material.dart';

import 'Cirriculum.dart';
import 'Students.dart';
import 'classRoom.dart';
import 'Assignment.dart';

class CodingClass extends StatefulWidget {
  @override
  _CodingClassState createState() => _CodingClassState();
}

class _CodingClassState extends State<CodingClass> {
  bool userIsFriend;
  TextEditingController messageController = new TextEditingController();
  //classRoom classroom = new classRoom();
//list of all tabviews
  List<Widget> containers = [
    classRoom(),
    students(),
    curriculum(),
    Assignment(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF3f08a6),
          actions: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.white.withAlpha(30),
                  onTap: () {
                    print("pressed TimeTable");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.access_alarm),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white.withAlpha(30),
                  onTap: () {
                    print("pressed Rating");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.star),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed NOtification");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.notification_important),
                  ),
                ),
              ],
            )
          ],
          title: Text("Coding Story"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text("ClassRoom"),
              ),
              Tab(
                child: Text("Students"),
              ),
              Tab(
                child: Text("Curriculum"),
              ),
              Tab(child: Text("Assignments")),
              //Tab(child: Text("Curriculamm")),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
