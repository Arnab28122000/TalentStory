import 'package:TalentBook/Screen/about.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  _launchURL() async {
    const url = 'https://thetalentbook.co.in/privacy_policy.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL1() async {
    const url = 'https://talentstory.in/#AboutAnchor';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color(0xff3f08a6),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10, top: 30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://static.wikia.nocookie.net/marvelmovies/images/0/0e/Endgame_Character_Posters_01.jpg/revision/latest?cb=20190326174327'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Tony Stark',
                    style:
                        GoogleFonts.roboto(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    'tony@gmail.com',
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.person_outlined,
              color: Color(0xff3f08a6),
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              color: Color(0xff3f08a6),
            ),
            title: Text(
              'Feedback',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Color(0xff3f08a6),
            ),
            title: Text(
              'About us',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {
              Navigator.of(context).push(PageRouteTransition(
                  animationType: AnimationType.slide_right,
                  builder: (context) => About()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              color: Color(0xff3f08a6),
            ),
            title: Text(
              'Privacy Policy',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {
              _launchURL();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Color(0xff3f08a6),
            ),
            title: Text(
              'Logout',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
