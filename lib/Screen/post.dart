import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          //shrinkWrap: true,
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Text(
                            '12 likes',
                            style: GoogleFonts.fredokaOne(
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {
                            Navigator.of(context).push(PageRouteTransition(
                                animationType: AnimationType.slide_up,
                                builder: (context) => likecount()));
                          },
                        ),
                        InkWell(
                          child: Text(
                            '12 comments',
                            style: GoogleFonts.fredokaOne(
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {
                            Navigator.of(context).push(PageRouteTransition(
                                animationType: AnimationType.slide_up,
                                builder: (context) => commentcount()));
                          },
                        ),
                        InkWell(
                          child: Text(
                            '12 shares',
                            style: GoogleFonts.fredokaOne(
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {
                            Navigator.of(context).push(PageRouteTransition(
                                animationType: AnimationType.slide_up,
                                builder: (context) => likecount()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.thumb_up_outlined, size: 20),
                            onPressed: () {}),
                        // SizedBox(width: 10),
                        IconButton(
                          icon: Image.asset(
                            'Assets/logos/comment.png',
                            height: 20,
                            width: 80,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteTransition(
                                animationType: AnimationType.slide_up,
                                builder: (context) => commentcount()));
                          },
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.share,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(PageRouteTransition(
                                  animationType: AnimationType.slide_up,
                                  builder: (context) => sharecount()));
                            }),
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

class likecount extends StatefulWidget {
  @override
  _likecountState createState() => _likecountState();
}

class _likecountState extends State<likecount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Ajay Sharma'),
          );
        },
      ),
    );
  }
}

class commentcount extends StatefulWidget {
  @override
  _commentcountState createState() => _commentcountState();
}

List<String> items = new List<String>.generate(30, (i) => "Items ${i + 1}");

class _commentcountState extends State<commentcount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        cacheExtent: 10,
        addAutomaticKeepAlives: false,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: new Key(items[index]),
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('Comment Deleted'),
              ));
            },
            background: Container(
              color: Colors.red,
            ),
            child: ListTile(
              title: Text('Vinay Gupta',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              //dense: true,
              isThreeLine: true,
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  '${items[index]}',
                  style: GoogleFonts.roboto(fontSize: 15),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget sharecount() {
  return Scaffold(
    body: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Ajay Sharma'),
        );
      },
    ),
  );
}
