import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayMenuType extends StatefulWidget {
  const DayMenuType({Key? key}) : super(key: key);

  @override
  State<DayMenuType> createState() => _DayMenuTypeState();
}

class _DayMenuTypeState extends State<DayMenuType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TypeDay(imageUrl: 'ayimolou.png', dayName: 'Lundi', foodType: 'Lunch', foodName: 'Ayimolou', foodDescription: 'Special food composed by\n bean and rice.\n Very sweet ! ', imageUrl2: 'croissant.png', foodName2: 'Croissant', foodType2: 'Tasted', foodDescription2: 'Like a bread !',),
          TypeDay(imageUrl: 'ayimolou.png', dayName: 'Lundi', foodType: 'Lunch', foodName: 'Ayimolou', foodDescription: 'Special food composed by\n bean and rice.\n Very sweet ! ', imageUrl2: 'croissant.png', foodName2: 'Croissant', foodType2: 'Tasted', foodDescription2: 'Like a bread !',),
        ],
      ),
    );
  }
}

class TypeDay extends StatelessWidget {
  String imageUrl;
  String dayName;
  String foodType;
  String foodName;
  String foodDescription;
  String imageUrl2;
  String foodType2;
  String foodName2;
  String foodDescription2;

  TypeDay(
      {Key? key,
        required this.imageUrl,
        required this.dayName,
        required this.foodType,
        required this.foodName,
        required this.foodDescription,
        required this.imageUrl2,
        required this.foodName2,
        required this.foodType2,
        required this.foodDescription2,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              dayName,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text (
                  foodType,
                style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            ),
            SizedBox(
              width: 100,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text (
                foodName,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Align(
              child: Container(
                child: Center(
                  child: Image.asset(
                  imageUrl,
                  height: 150,
                  width: 115,
                     ),
                  ),
                ),
              ),
            SizedBox(
              width: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text (
                foodDescription,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text (
                foodType2,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text (
                foodName2,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Align(
              child: Container(
                child: Center(
                  child: Image.asset(
                    imageUrl2,
                    height: 150,
                    width: 115,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text (
                foodDescription2,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
