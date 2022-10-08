import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayMenuType extends StatelessWidget {
  const DayMenuType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        mainAxisExtent: 600,
      ),
      children: List.generate(typeDays.length, (index) {
        return SelectCard(typeDays: typeDays[index]);
      }),
    );
  }
}

class TypeDay {
  const TypeDay(
      {required this.dayName,
      required this.imageUrl,
      required this.foodType,
      required this.foodName,
      required this.foodDescription,
      required this.imageUrl2,
      required this.foodType2,
      required this.foodName2,
      required this.foodDescription2});

  final String imageUrl;
  final String dayName;
  final String foodType;
  final String foodName;
  final String foodDescription;
  final String imageUrl2;
  final String foodType2;
  final String foodName2;
  final String foodDescription2;
}

const List<TypeDay> typeDays = <TypeDay>[
  TypeDay(
    imageUrl: 'ayimolou.png',
    dayName: 'Lundi',
    foodType: 'Lunch',
    foodName: 'Ayimolou',
    foodDescription:
        'Special food composed by\n bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'ayimolou.png',
    dayName: 'Mardi',
    foodType: 'Tasted',
    foodName: 'Ayimolou',
    foodDescription:
        'Special food composed by\n bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Lunch',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'ayimolou.png',
    dayName: 'Mercredi',
    foodType: 'Lunch',
    foodName: 'Ayimolou',
    foodDescription:
        'Special food composed by\n bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'ayimolou.png',
    dayName: 'Jeudi',
    foodType: 'Lunch',
    foodName: 'Ayimolou',
    foodDescription:
        'Special food composed by\n bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'ayimolou.png',
    dayName: 'Vendredi',
    foodType: 'Lunch',
    foodName: 'Ayimolou',
    foodDescription:
        'Special food composed by\n bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.typeDays}) : super(key: key);
  final TypeDay typeDays;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline5;
    return Container(
      color: Colors.white70,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Text(days.dayName, style: textStyle),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 35,
                ),
                child: Text(
                  typeDays.dayName,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Image.asset(
                        'ayimolou.png',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${typeDays.foodType}  :  ${typeDays.foodName}\n \n ${typeDays.foodDescription}"
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.deepOrangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Image.asset(
                        'Kom.jpg',
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "${typeDays.foodType2}  :  ${typeDays.foodName2}\n \n ${typeDays.foodDescription2}"
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}