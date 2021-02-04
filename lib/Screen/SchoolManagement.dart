import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class manage extends StatefulWidget {
  @override
  _manageState createState() => _manageState();
}

// ignore: camel_case_types
class _manageState extends State<manage> {
  TextEditingController _controller = new TextEditingController();
  Widget _buildLoginBtn() {
    return Container(
      // padding: EdgeInsets.(vertical: 25.0),
      width: 120,
      height: 40,
      child: Center(
          child: Text(
        'Previous',
        style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(9.5)),
    );
  }

  Widget _buildLoginBtn1() {
    return Container(
      // padding: EdgeInsets.(vertical: 25.0),
      width: 120,
      height: 40,
      child: Center(
          child: Text(
        'Save',
        style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(9.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text('School Management',
                  style: GoogleFonts.roboto(fontSize: 27)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('School\nName',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 22)),
                  Container(
                    width: 320,
                    height: 50,
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
                  Text('State',
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 22)),
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
                    padding: const EdgeInsets.only(right: 90.0),
                    child: Text('City',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 22)),
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
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 22)),
                  ),
                  Container(
                    width: 320,
                    height: 50,
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
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 22)),
                  Container(
                    width: 320,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter your number',
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.phone,
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
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 22)),
                  Container(
                    width: 320,
                    height: 50,
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
                  children: [_buildLoginBtn(), _buildLoginBtn1()]),
            ),
          ]),
        ),
      ),
    );
  }
}
