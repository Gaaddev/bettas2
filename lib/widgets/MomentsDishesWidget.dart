import 'package:flutter/material.dart';
import '../widgets/MomentsDishesWidget.dart';
import 'MomentsDishesTypes.dart';
import 'package:google_fonts/google_fonts.dart';

class MomentsDishesWidget extends StatefulWidget {
  const MomentsDishesWidget({Key? key}) : super(key: key);

  @override
  State<MomentsDishesWidget> createState() => _MomentsDishesWidgetState();
}

class _MomentsDishesWidgetState extends State<MomentsDishesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          MomentsDishesWidgetTitle(),
          MomentsDishesModels(
                 imageUrl: '',
              ),
        ],
    );
  }
}

class MomentsDishesModels extends StatelessWidget {
  String imageUrl;

  MomentsDishesModels({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, ScaleRoute(page: FoodDetailsPage())
        //);
      },
      child: SingleChildScrollView(
        child: Container(
          height: 620,
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             // SizedBox(
               // height: 2,
              //),
              MomentsDishesTypes(),
              Container(
                width: 350,
                height: 250,
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  color: Colors.black,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: Image.asset(
                    'kom.png',
                  ),
                ),
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
                      'Tasted',
                      style: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                      width: 110,
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
              Container(
                width: 350,
                height: 250,
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  color: Colors.black,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                      child: Image.asset(
                        'Images/aloko.png',
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MomentsDishesWidgetTitle extends StatelessWidget {
  const MomentsDishesWidgetTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Moment\'s Dishes',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF3a3a3b),
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
