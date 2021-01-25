import 'package:flutter/material.dart';

class ExploreArts extends StatefulWidget {
  @override
  _ExploreArtsState createState() => _ExploreArtsState();
}

class _ExploreArtsState extends State<ExploreArts> {
  String _topic;
  List<String> topics = <String>[
    "Boxing",
    "Gatka",
    "Kathi Samu",
    "Kick boxing",
    "Kung Fu",
    "Kalaripayattu",
    "Lathi khela"
        "Malla yuddha",
    "Mardani Khel",
    "Mixed Martial Arts",
    "Musti Yuddha",
    "Pari khanda",
    "Shaolin Kung Fu",
    "Silambam",
    "Taekwondo",
    "Thang Ta",
    "Wrestling",
    "Other Martial Arts",
    "Bells",
    "Tuba",
    "Cello",
    "Viola",
    "Trumpet",
    "Sopranino",
    "Trombone",
    "Bugle",
    "Drums",
    "Xylophone",
    "Violin",
    "Dulcimer",
    "Flute",
    "Tam Tam",
    "Bass",
    "Alto",
    "Harp",
    "Triangle",
    "French horn",
    "Other Instruments",
    "Rumda",
    "Samba",
    "Salsa",
    "Western dance",
    "Belly dance",
    "Tap dance",
    "Break dance",
    "Bollywood dance",
    "Bharatnatiyam",
    "Kathakali",
    "Kathak",
    "Kuchipudi",
    "Odissi",
    "Manipuri",
    "Folk tribal dance",
    "Singing",
    "Other dance singing clubs",
    "Photography",
    "Cooking",
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
        children: List.generate(56, (index) {
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
