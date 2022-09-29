import 'package:bettas/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bettas/animations/delayed_animation.dart';
import 'package:bettas/pages/LoginPage.dart';
import 'package:bettas/pages/LogPage.dart';

class SocialPage extends StatelessWidget {

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
          icon: Icon(Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
              delay: 1000,
              child: Container(
                height: 200,
                child: Image.asset('serveur.png'),
              ),
            ),
            DelayedAnimation(
              delay: 1000,
              child: Container(
                height: 200,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                          'Change starts here',
                        style: GoogleFonts.poppins(
                          color: d_oronge,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),
                        Text(
                      'Save your orders to access your personal eating preference !',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                      ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 40,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogPage(),
                            ),
                          );
                        },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: d_oronge,
                        padding: EdgeInsets.all(13)
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail_outline_outlined),
                            SizedBox(width: 10,),
                            Text(
                              'EMAIL',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                            ),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF576dff),
                          padding: EdgeInsets.all(13)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width: 10,),
                          Text(
                            'FACEBOOK',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.white,
                          padding: EdgeInsets.all(13)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              'G_google_image.png',
                              height: 20
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'GOOGLE',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
