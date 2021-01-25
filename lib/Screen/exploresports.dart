import 'package:flutter/material.dart';

class ExploreSports extends StatefulWidget {
  @override
  _ExploreSportsState createState() => _ExploreSportsState();
}

class _ExploreSportsState extends State<ExploreSports> {
  String _topic;
  List<String> topics = <String>[
    "Archery",
    "Athletics",
    "Badminton",
    "Basketball",
    "Carroms",
    "Chess",
    "Cricket"
        "Cycling",
    "Football",
    "Gymnastics",
    "Hockey",
    "Kabbadi",
    "Motor bike",
    "Running",
    "Snooker/Billards",
    "Swimmimg",
    "Table Tennis",
    "Volley ball",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(18, (index) {
          print(topics.length);
          for (int i = 0; i <= index; i++) {
            _topic = topics[i];
          }
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Colors.white,
              onPressed: () {},
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple[50],
                      ),
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        'class name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple[700],
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '$_topic',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.deepPurple[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        'Hyderabad',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget academys() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple[50],
              ),
              margin: EdgeInsets.all(10),
              height: 60,
              width: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Text(
                "class name",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut mauris scelerisque, semper tellus sed, bibendum sem. Sed id rutrum nibh. Donec ornare at tortor at porta. Fusce fringilla quis felis in varius.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut mauris scelerisque, semper tellus sed, bibendum sem.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
