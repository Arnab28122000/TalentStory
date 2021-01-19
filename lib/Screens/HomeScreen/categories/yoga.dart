import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/explore-arts.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/exploreyoga.dart';

import 'package:TalentBook/Screens/HomeScreen/categories/myarts.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/myyoga.dart';

class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.architecture),
                text: "My Yoga",
              ),
              Tab(
                icon: Icon(Icons.explore),
                text: "Explore",
              ),
            ],
          ),
          title: Text(
            "Yoga",
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UIAnim()),
              );
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            MyYoga(),
            ExploreYoga(),
          ],
        ),
      ),
    );
  }
}
