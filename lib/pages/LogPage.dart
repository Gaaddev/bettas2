import 'package:bettas/pages/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:bettas/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bettas/animations/delayed_animation.dart';
import 'package:bettas/pages/LoginPage.dart';

class LogPage extends StatelessWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     // DelayedAnimation(
                      //  delay: 1500,
                      //  child:
                        Text(
                          'Complete your identity',
                          style: GoogleFonts.poppins(
                            color: d_oronge,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      //),
                      SizedBox(height: 22,),
                     // DelayedAnimation(
                     //   delay: 2500,
                     //   child:
                        Text(
                          'It\'s recommended to fill in the lines below for us to better protect you information.',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                     // ),
                    ],
                  ),
                ),
            SizedBox(
              height: 5,
            ),
            LoginForm(),
            SizedBox(
              height: 40,
            ),
           // DelayedAnimation(
           //   delay: 5500,
           //   child:
              ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StartPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: d_oronge,
                          padding: EdgeInsets.symmetric(
                              horizontal: 125,
                              vertical: 13,
                          ),
                      ),
                      child: Text(
                              'CONFIRM',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                      ),
              //      ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 35,
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, child:
                    //    DelayedAnimation(
                    //      delay: 6500,
                    //      child:
                              Text(
                            'SKIP',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ),
                      ),
                    //),
                  ],
                ),
              ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
      //    DelayedAnimation(
      //        delay: 3500,
      //        child:
          TextField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
        //      ),
      ),
                  SizedBox(
                    height: 25,
                  ),
      //    DelayedAnimation(
      //      delay: 4000,
      //      child:
                  TextField(
              decoration: InputDecoration(
                labelText: 'Your First names',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
      //      ),
          ),
          SizedBox(
            height: 25,
          ),
      //    DelayedAnimation(
      //      delay: 4500,
      //      child:
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Class',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
      //      ),
          ),
          SizedBox(
            height: 25,
          ),
      //DelayedAnimation(
      //  delay: 5000,
      //  child:
        TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Colors.grey[400],
          ),
                  labelText: 'Create Your Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: Colors.deepOrangeAccent,
                      )
                  ),
                ),
      //        ),
          ),
          SizedBox(
            height: 25,
          ),
      //    DelayedAnimation(
      //      delay: 5500,
      //      child:
          TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Repeat Your Password',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.deepOrangeAccent,
                    )
                ),
              ),
            ),
        //  ),
        ],
      ),
    );
  }
}
