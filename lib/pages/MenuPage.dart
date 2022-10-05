import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bettas/widgets/DayMenuType.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
              child: Text(
                'Menu de la Semaine',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.cyanAccent,
                  child: DayMenuType(),
            ),
          ),
    );
  }
}

