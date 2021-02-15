import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            posts(),
          ],
        ),
      ),
    );
  }

  Widget posts() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0),
              child: Card(
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 500,
                        color: Colors.purple[50],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.thumb_up, size: 20),
                            onPressed: () {}),
                        // SizedBox(width: 10),
                        IconButton(
                            icon: Icon(
                              Icons.share,
                              size: 20,
                            ),
                            onPressed: null)
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
