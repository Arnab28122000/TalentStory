import 'package:TalentBook/RefScreens/CodingClass.dart';
import 'package:TalentBook/RefScreens/Lang.dart';
import 'package:TalentBook/Screen/Drawer.dart';
import 'package:TalentBook/Screen/arts.dart';
import 'package:TalentBook/Screen/mission.dart';
import 'package:TalentBook/Screen/notificationUI.dart';
import 'package:TalentBook/sports.dart';
import 'package:TalentBook/yoga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:route_transitions/route_transitions.dart';

class UIAnim extends StatefulWidget {
  @override
  _UIAnimState createState() => _UIAnimState();
}

class _UIAnimState extends State<UIAnim> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = new Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
            // drawer: Drawer(child: ,),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xff3f08a6),
              selectedIconTheme: IconThemeData(color: Color(0xff3f08a6)),
              currentIndex: _currentindex,
              items: [
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.home,
                      color: Color(0xff3f08a6),
                    ),
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    title: Text('Home')),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.mail_outline,
                      color: Color(0xff3f08a6),
                    ),
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    title: Text('Message')),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.calculate_outlined,
                      color: Color(0xff3f08a6),
                    ),
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey.shade500,
                    ),
                    title: Text('Events')),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.people,
                      color: Color(0xff3f08a6),
                    ),
                    icon: Icon(
                      Icons.people,
                      color: Colors.grey.shade500,
                    ),
                    title: Text('profile'))
              ],
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
            ),
            drawer: NavDrawer(),
            appBar: AppBar(
              title: Text('Talent Story',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              backgroundColor: Color(0xff3f08a6),
              // title: Text('TalentStory',
              //     style: TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white)),

              //centerTitle: true,

              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.notification_important),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => notificationUI()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
              elevation: 10,
            ),
            floatingActionButton: FloatingActionButton(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple.shade300,
                elevation: 15,
                onPressed: () {},
                child: Icon(Icons.note_add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            body: Container(
                //margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(color: Colors.white),
                // borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 18.0, top: 18.0, bottom: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.purple),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.code_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Coding',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => CodingClass()));
                              },
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.emoji_emotions_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Mission',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => Mission()));
                              },
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.art_track_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Arts',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => Arts()));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.sports_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Sports',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => Sports()));
                              },
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.run_circle_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Yoga',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => Yoga()));
                              },
                            ),
                          ),
                          FadeTransition(
                            opacity: _animation,
                            child: GestureDetector(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.purple),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.language_outlined,
                                      size: 40,
                                      color: Color(0xff3f08a6),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Languages',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(PageRouteTransition(
                                    animationType: AnimationType.slide_right,
                                    builder: (context) => S6()));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('TalentStory',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(child: Image.asset('Assets/Pics/IT.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "In literary theory, a text is any object that can be, whether this object is a work of literature, a street sign, an arrangement of buildings on a city block, or styles of clothing. It is a coherent set of signs that transmits some kind of informative message."),
                        ),
                      ),
                    ],
                  ),
                )));
      },
    );
  }
}
