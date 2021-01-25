import 'package:TalentBook/Screen/exploresports.dart';
import 'package:TalentBook/Screen/mysports.dart';
import 'package:flutter/material.dart';

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
