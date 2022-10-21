import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bettas/main.dart';
import 'package:bettas/widgets/DayCommandType.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView (
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
               Container(
                 decoration: const BoxDecoration(
                   color: Colors.transparent,
                 ),
                padding: const EdgeInsets.all(8),
                height: 670,
                    child: DayCommandType(),
              ),
            const SizedBox(
              height: 5,
            ), ElevatedButton(
              onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => (),
                //     ),
                //   );
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: d_oronge,
                padding: const EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 13,
                ),
              ),
              child: Text(
                'CONFIRM',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
