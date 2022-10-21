import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
import 'OrderConfirmWidget.dart';

class DayCommandType extends StatelessWidget {
  const DayCommandType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              mainAxisExtent: 200,
            ),
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

const List<Day> days = <Day>[
  Day(
    dayName: 'Lundi',
  ),
  Day(
    dayName: 'Mardi',
  ),
  Day(
    dayName: 'Mercredi',
  ),
  Day(
    dayName: 'Jeudi',
  ),
  Day(
    dayName: 'Vendredi',
  ),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.days}) : super(key: key);
  final Day days;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline5;
    return  Container(
      height: 260,
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
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 14,
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
               //     const SizedBox(
               //       height: 4,
               //     ),
                    OrderConfirmWidget(),
                  ]),
          )),
    );
  }
}
