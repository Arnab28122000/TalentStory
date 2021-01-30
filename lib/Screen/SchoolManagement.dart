import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_button/sleek_button.dart';

class manage extends StatelessWidget {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'Assets/Pics/logo1.png',
            width: 60,
            height: 60,
          ),
          Center(
            child: Text('School Management',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('School\nName',
                    style: GoogleFonts.fredokaOne(
                        color: Colors.black, fontSize: 25)),
                Container(
                  width: 300,
                  height: 55,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Enter your school name',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.school,
                        color: Color(0xff3f08a6),
                      ),
                    ),
                    controller: _controller,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple)),

                  //,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 140.0),
                  child: Text('State',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                ),
                DropdownButton(
                  items: [],
                  hint: Text('Select your State'),
                  onChanged: (value) {},
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 190.0),
                  child: Text('City',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                ),
                DropdownButton(
                  items: [],
                  hint: Text('Enter your city'),
                  onChanged: (value) {},
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text('Area',
                      style: GoogleFonts.fredokaOne(
                          color: Colors.black, fontSize: 25)),
                ),
                Container(
                  width: 300,
                  height: 55,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter your area you live in',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.place,
                        color: Color(0xff3f08a6),
                      ),
                    ),
                    controller: _controller,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple)),

                  //,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Contact\nNumber',
                    style: GoogleFonts.fredokaOne(
                        color: Colors.black, fontSize: 25)),
                Container(
                  width: 290,
                  height: 55,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter your number',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.school,
                        color: Color(0xff3f08a6),
                      ),
                    ),
                    controller: _controller,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple)),

                  //,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Official\n Email',
                    style: GoogleFonts.fredokaOne(
                        color: Colors.black, fontSize: 25)),
                Container(
                  width: 300,
                  height: 55,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email ID',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff3f08a6),
                      ),
                    ),
                    controller: _controller,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple)),

                  //,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SleekButton(
                    child: Text('Previous',
                        style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                    style: SleekButtonStyle.outlined(
                        context: context, borderWidth: 3, color: Colors.purple),
                    onTap: () {},
                  ),
                  SleekButton(
                    child: Text('Save',
                        style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                    style: SleekButtonStyle.outlined(
                        context: context, borderWidth: 3, color: Colors.purple),
                    onTap: () {},
                  )
                ]),
          ),
        ]),
      ),
    );
  }
}
