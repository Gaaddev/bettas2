import 'package:bettas/pages/OrderPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bettas/widgets/DayCommandType.dart';

class OrderConfirmWidget extends StatefulWidget {
  const OrderConfirmWidget({Key? key}) : super(key: key);

  @override
  State<OrderConfirmWidget> createState() => _OrderConfirmWidgetState();
}

class _OrderConfirmWidgetState extends State<OrderConfirmWidget> {
  List<Map> typeFood = [
    {"name": "Tasted", "isChecked": false},
    {"name": "Lunch", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        //    Text(
        //      "Choose your food(s)",
        //      style: GoogleFonts.poppins(
        //        color: Colors.grey,
        //        fontSize: 12,
        //        fontWeight: FontWeight.w500,
        //      ),
        //    ),
        //    const SizedBox(
        //      height: 2,
        //    ),
            const Divider(),
        //    const SizedBox(
        //      height: 2,
        //    ),

            //add checkbox here...
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: typeFood.map((subj) {
              return Container(
                height: 50,
                  padding: const EdgeInsets.only(
                  left: 3,
                  right: 3,
                  ),
                child: Card(
                  child: CheckboxListTile(
                      value: subj["isChecked"],
                      title: Row(
                        children: [
                          Container(
                            child: Center(
                              child: Image.asset(
                                'lunchs.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Center(
                                child:
                                  Text(subj["name"])
                            ),
                          ),
                        ],
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          subj["isChecked"] = newValue;
                        });
                      }),
                ),
              );
            }).toList()),
            //display the result
        //    const SizedBox(
        //      height: 2,
        //    ),
            const Divider(),
        //    const SizedBox(
        //      height: 2,
        //    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: typeFood.map((subj) {
                if (subj["isChecked"] == true) {
                  return Align(
                    alignment: Alignment.bottomRight,
                    child: Card(
                      elevation: 0,
                      //color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(subj["name"]),
                      ),
                    ),
                  );
                }
                return const Padding(padding: EdgeInsets.zero);
              }).toList(),
            ),
          ],
        ),
      );
  }
}
