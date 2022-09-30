import 'package:bettas/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/MomentsDishesWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.symmetric(
               vertical: 10,
             ),
            //height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      fillColor: Colors.grey[400],
                      hintStyle: TextStyle(),
                      hintText: 'Rechercher',
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  //height: 450,
                  padding: EdgeInsets.all(2.0),
                    child: const MomentsDishesWidget(),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  width: double.infinity,
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       Text(
                        'Lunch',
                        style: GoogleFonts.poppins(
                          color: Colors.black45,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 145,
                      ),
                      Card(
                        color: Colors.white,
                        //elevation: 0,
                        child: Align(
                          //alignment: Alignment.topRight,
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const [
                                Icon(
                                  Icons.stars,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
         ),
       );
  }
}
