import 'package:bettas/main.dart';
import 'package:flutter/material.dart';
import 'package:bettas/pages/Welcome_Page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LogPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Eleve Sourire',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '   Classe :  2nde D',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '(228) 92715717',
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: TextButton(
                              onPressed: () {},
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Edit Profile',
                                  labelStyle: GoogleFonts.poppins(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                  prefixIcon: const Align(
                                    alignment: Alignment.centerLeft,
                                    widthFactor: 1.0,
                                    heightFactor: 1.0,
                                    child: Icon(
                                      Icons.edit,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 75,
                right: 75,
                top: 10,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: const Card(
                      child: Icon(Icons.credit_card,
                      size: 70,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'Payment Methods',
                      style: GoogleFonts.poppins(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        //    Navigator.push(
                        //      context,
                        //      MaterialPageRoute(
                        //        builder: (context) => const (),
                        //      ),
                        //    );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black26,
                          padding: const EdgeInsets.all(2)),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.keyboard_return_rounded),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'My Orders',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        //    Navigator.push(
                        //      context,
                        //      MaterialPageRoute(
                        //        builder: (context) => const (),
                        //      ),
                        //    );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black26,
                          padding: const EdgeInsets.all(2)),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.percent),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'My Coupons',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        //    Navigator.push(
                        //      context,
                        //      MaterialPageRoute(
                        //        builder: (context) => const (),
                        //      ),
                        //    );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black26,
                          padding: const EdgeInsets.all(2)),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.mail),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'My Notifications',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        //    Navigator.push(
                        //      context,
                        //      MaterialPageRoute(
                        //        builder: (context) => const (),
                        //      ),
                        //    );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black26,
                          padding: const EdgeInsets.all(2)),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.settings),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'My Settings',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: d_oronge,
                    padding: const EdgeInsets.all(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
