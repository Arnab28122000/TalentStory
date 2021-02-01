import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class UIAnim extends StatefulWidget {
  @override
  _UIAnimState createState() => _UIAnimState();
}

class _UIAnimState extends State<UIAnim> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation,
      _animation,
      _animation1,
      _animation2,
      _animation3,
      _animation4,
      _animation5,
      _animation6,
      _animation7;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    _animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation1 = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation2 = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation3 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation4 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation5 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation6 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation7 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    _controller.forward();
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
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
                    title: Text('to-do')),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.people,
                      color: Color(0xff3f08a6),
                    ),
                    icon: Icon(
                      Icons.people,
                      color: Colors.grey.shade500,
                    ),
                    title: Text('people'))
              ],
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
            ),
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
                  color: Colors.black,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
              elevation: 20,
              leading: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.black87,
                onPressed: () {},
              ),
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
                          Transform(
                            transform: Matrix4.translationValues(
                                width * _animation.value,
                                height * _animation.value,
                                height * _animation.value),
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
                          ),
                          Transform(
                            transform: Matrix4.translationValues(
                                0, height * _animation1.value, 0),
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
                          ),
                          Transform(
                            transform: Matrix4.translationValues(
                                _animation2.value * width,
                                _animation2.value * height,
                                0),
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
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform(
                            transform: Matrix4.translationValues(
                                _animation3.value * width,
                                _animation3.value * height,
                                0),
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
                          ),
                          Transform(
                            transform: Matrix4.translationValues(
                                _animation4.value * width,
                                _animation4.value * height,
                                0),
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
                          ),
                          Transform(
                            transform: Matrix4.translationValues(
                                _animation5.value * width,
                                _animation5.value * height,
                                0),
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
