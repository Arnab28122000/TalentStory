import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavDrawer extends StatelessWidget {
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
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
            dense: true,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
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
