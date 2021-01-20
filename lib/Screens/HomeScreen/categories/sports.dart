import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/explore-arts.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/exploresports.dart';

import 'package:TalentBook/Screens/HomeScreen/categories/myarts.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/mysports.dart';

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
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
                text: "My Sports",
              ),
              Tab(
                icon: Icon(Icons.explore),
                text: "Explore",
              ),
            ],
          ),
          title: Text(
            "Sports",
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
            MySports(),
            ExploreSports(),
          ],
        ),
      ),
    );
  }
}
