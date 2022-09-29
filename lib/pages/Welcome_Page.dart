import 'package:bettas/main.dart';
import 'package:flutter/material.dart';
import 'package:bettas/animations/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bettas/pages/SocialPage.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  //color: Colors.blue,
                  height: 170,
                  child: Image.asset('TchopLogo.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  //color: Colors.blue,
                  height: 300,
                  child: Image.asset('serveur1.png'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  //color: Colors.blue,
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                      'Do you want to TCHOP Very Fast ? So use it !',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: d_oronge,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SocialPage(),),);
                    },
                    child: Text('GET STARTED'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
