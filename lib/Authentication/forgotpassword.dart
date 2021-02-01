import 'package:TalentBook/Authentication/OTP_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class forgot extends StatelessWidget {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget _buildEmailTF() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Phone',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    //fontFamily: GoogleFonts.fredokaOne(color: Colors.black)
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    hintText: 'Enter your Phone Number',
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('+91'),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                ),
              ),
            ],
          ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: double.infinity,
          //   child: FlatButton(
          //     color: Colors.blue,
          //     onPressed: () {
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => OTPScreen(_controller.text)));
          //     },
          //     child: Text(
          //       'Next',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      );
    }

    Widget _buildverbutton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 15.0,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OTPScreen(_controller.text)));
          },
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.white,
          child: Text(
            'Send Verification Code',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      );
    }

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Container(
                      height: double.infinity,
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 50.0,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'Assets/Pics/logo1.png',
                              width: 85,
                            ),
                            SizedBox(
                              height: 90,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            _buildEmailTF(),
                            SizedBox(
                              height: 50,
                            ),
                            _buildverbutton()
                          ],
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
