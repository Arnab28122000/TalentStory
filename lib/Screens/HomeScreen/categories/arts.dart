import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:TalentBook/Screens/HomeScreen/categories/explore-arts.dart';

import 'package:TalentBook/Screens/HomeScreen/categories/myarts.dart';

class Arts extends StatefulWidget {
  @override
  _ArtsState createState() => _ArtsState();
}

class _ArtsState extends State<Arts> {
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
                text: "My Arts",
              ),
              Tab(
                icon: Icon(Icons.explore),
                text: "Explore",
              ),
            ],
          ),
          title: Text(
            "Arts",
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
            MyArts(),
            ExploreArts(),
          ],
        ),
      ),
    );
  }
}
