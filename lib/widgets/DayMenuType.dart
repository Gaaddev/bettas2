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
        mainAxisExtent: 510,
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
    imageUrl: 'kom.png',
    dayName: 'Lundi',
    foodType: 'Lunch',
    foodName: 'Kom',
    foodDescription:
        'Special food composed \n by meal.\n Delicious ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'Images/jollof_rice.png',
    dayName: 'Mardi',
    foodType: 'Lunch',
    foodName: 'Jollof Rice',
    foodDescription:
        'Special food composed \n by rice.\n muah ! ',
    imageUrl2: 'Images/aloko.png',
    foodName2: 'Aloko',
    foodType2: 'Tasted',
    foodDescription2: 'Sweet delicious !',
  ),
  TypeDay(
    imageUrl: 'Images/atieke_poisson.png',
    dayName: 'Mercredi',
    foodType: 'Lunch',
    foodName: 'Atieke',
    foodDescription:
        'African meal food \n with fish.\n Very sweet ! ',
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
        'Special food composed \n by bean and rice.\n Very sweet ! ',
    imageUrl2: 'croissant.png',
    foodName2: 'Croissant',
    foodType2: 'Tasted',
    foodDescription2: 'Like a bread !',
  ),
  TypeDay(
    imageUrl: 'Images/grillades_plats.png',
    dayName: 'Vendredi',
    foodType: 'Lunch',
    foodName: 'Special Meat',
    foodDescription:
        'Special food composed \n by a lot of meat.\n Ewooo ! ',
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
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Text(days.dayName, style: textStyle),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(2),
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
            const Divider(),
            const SizedBox(
              height: 1,
            ),
            Card(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
            //  color: Colors.deepOrangeAccent,
              child: Padding(
                padding: const EdgeInsets.only( left: 30, right: 30,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          "${typeDays.foodType2}  :  ${typeDays.foodName2}\n \n ${typeDays.foodDescription2}"
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Image.asset(
                          typeDays.imageUrl2.toString(),
                       //   'Kom.jpg',
                          height: 200,
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Image.asset(
                          typeDays.imageUrl.toString(),
                          // 'ayimolou.png',
                          height: 200,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          " ${typeDays.foodType}  :  ${typeDays.foodName}\n \n ${typeDays.foodDescription}"
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