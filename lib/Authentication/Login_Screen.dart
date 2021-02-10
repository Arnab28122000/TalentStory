import 'package:TalentBook/Authentication/OTP_Screen.dart';
import 'package:TalentBook/Authentication/Signup.dart';
import 'package:TalentBook/Authentication/forgotpassword.dart';
import 'package:TalentBook/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  TextEditingController _phonecontroller = new TextEditingController();
  TextEditingController _passwordcontroller1 = TextEditingController();

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Phone',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.0),
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 70.0,
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  //fontFamily: GoogleFonts.fredokaOne(color: Colors.black)
                ),
                decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(9)),
                  contentPadding: EdgeInsets.only(top: 12.0, right: 20),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  hintText: 'Enter your Phone Number',
                  // prefix: Padding(
                  //   padding: EdgeInsets.all(0),
                  //   child: Text('+91'),
                  // ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _phonecontroller,
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

  Widget _password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.0),
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 60.0,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                  //fontFamily: GoogleFonts.fredokaOne(color: Colors.black)
                ),
                decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(9)),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.security,
                    color: Colors.purple,
                  ),
                  hintText: 'Enter your password',
                  // prefix: Padding(
                  //   padding: EdgeInsets.all(4),
                  //   child: Text('+91'),
                  // ),
                ),
                // maxLength: 6,
                keyboardType: TextInputType.text,
                controller: _passwordcontroller1,
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

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.purple.shade600),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.white,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: GoogleFonts.roboto(),
            // style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return InkWell(
      child: Container(
        // padding: EdgeInsets.(vertical: 25.0),
        width: 230,
        height: 40,
        child: Center(
            child: Text(
          'Log In',
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        )),
        decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(color: Colors.purple),
            borderRadius: BorderRadius.circular(9.5)),
      ),
      onTap: () {
        Navigator.of(context).push(PageRouteTransition(
            animationType: AnimationType.slide_right,
            builder: (context) => UIAnim()));
      },
    );
  }

  // Widget _buildSignupBtn() {
  //   return GestureDetector(
  //     onTap: () => print('Sign Up Button Pressed'),
  //     child: RichText(
  //       text: TextSpan(
  //         children: [
  //           TextSpan(
  //             text: 'Don\'t have an Account? ',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 18.0,
  //               fontWeight: FontWeight.w400,
  //             ),
  //           ),
  //           TextSpan(
  //             text: 'Sign Up',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 18.0,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'Assets/Pics/logo1.png',
                        width: 85,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Welcome Learner',
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 30)),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 20,
                      ),
                      _password(),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          Navigator.of(context).push(PageRouteTransition(
                              animationType: AnimationType.slide_right,
                              builder: (context) => forgot()));
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // _buildRememberMeCheckbox(),
                      SizedBox(
                        height: 30,
                      ),
                      _buildLoginBtn(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Text('Dont have an account?'),
                          )),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.roboto(
                                    color: Colors.purple[700],
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                                // fontWeight: FontWeight.bold),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(PageRouteTransition(
                                  animationType: AnimationType.slide_right,
                                  builder: (context) => Sign1()));
                            },
                          ),
                        ],
                      )

                      // _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
