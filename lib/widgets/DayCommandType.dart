import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayCommandType extends StatelessWidget {
  const DayCommandType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,),
          children: List.generate(days.length, (index) {
            return Center(
              child: SelectCard(days: days[index]),
            );
          }),
        ),
    );
  }
}

class Day {
  const Day({required this.dayName});
  final String dayName;
}

const List<Day> days = const <Day> [
  const Day(dayName: 'Lundi',),
  const Day(dayName: 'Mardi',),
  const Day(dayName: 'Mercredi',),
  const Day(dayName: 'Jeudi',),
  const Day(dayName: 'Vendredi',),
];
class SelectCard extends StatelessWidget {
   SelectCard({Key? key, required this.days}) : super(key: key);
  final Day days;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline5;
    return Container(
      child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          color: Colors.amberAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //Text(days.dayName, style: textStyle),
              TextButton(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                    ),
                    child: Text(
                      days.dayName,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  //color: Colors.indigoAccent,
                  padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                  ),
                  child: Card(
                  //  shape: const RoundedRectangleBorder(
                  //    borderRadius: BorderRadius.all(
                  //      Radius.circular(5.0),
                  //    ),
                  //  ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Center(
                            child: Image.asset('lunchs.png',
                            height: 40,
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Center(
                            child: Text('Tasted'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Colors.indigoAccent,
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: Card(
                    //  shape: const RoundedRectangleBorder(
                    //    borderRadius: BorderRadius.all(
                    //      Radius.circular(5.0),
                    //    ),
                    //  ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Center(
                            child: Image.asset('tasted.png',
                              height: 45,
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Center(
                            child: Text('Lunch'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
          )
      ),
    );
  }
}

