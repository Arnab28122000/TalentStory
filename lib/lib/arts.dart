import 'package:flutter/material.dart';
import 'package:talentbook/explore-arts.dart';

import 'package:talentbook/myarts.dart';

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
