import 'package:bettas/main.dart';
import 'package:flutter/material.dart';
import 'package:bettas/pages/Welcome_Page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            Container(
              child: const Text('Enc cours'),
            ),
            Container(
              child: const Text('Enc cours'),
            ),
            Container(
              child: const Text('Enc cours'),
            ),
          ],
        ),
      ),
    );
  }
}
