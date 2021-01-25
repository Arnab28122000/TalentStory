import 'package:flutter/material.dart';
import 'package:talentbook/create-mission.dart';
import 'package:talentbook/reviews.dart';
import 'package:talentbook/students.dart';
import 'package:talentbook/warroom.dart';

class Mission extends StatefulWidget {
  @override
  _MissionState createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.meeting_room),
                text: "War Room",
              ),
              Tab(
                icon: Icon(Icons.school),
                text: "Students",
              ),
              Tab(
                icon: Icon(Icons.rate_review),
                text: "Reviews",
              ),
            ],
          ),
          title: Text(
            "Mission",
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateMission()),
                );
              },
              icon: Icon(Icons.add_box),
            ),
            SizedBox(width: 10),
            IconButton(
                icon: Icon(Icons.notification_important), onPressed: () {}),
            SizedBox(width: 10),
          ],
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            WarRoom(),
            Students(),
            Reviews(),
          ],
        ),
      ),
    );
  }
}
