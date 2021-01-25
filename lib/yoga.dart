import 'package:flutter/material.dart';
import 'package:talentbook/explore-arts.dart';
import 'package:talentbook/exploreyoga.dart';

import 'package:talentbook/myarts.dart';
import 'package:talentbook/myyoga.dart';

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
