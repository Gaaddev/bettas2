import 'package:flutter/material.dart';

class MomentsDishesTypes extends StatefulWidget {
  const MomentsDishesTypes({Key? key}) : super(key: key);

  @override
  State<MomentsDishesTypes> createState() => _MomentsDishesTypesState();
}

class _MomentsDishesTypesState extends State<MomentsDishesTypes> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MomentsDishesType( imageUrl: 'Images/atieke_poisson.png', slug: ''),
          MomentsDishesType(imageUrl: 'Images/aloko.png', slug: ''),
          MomentsDishesType( imageUrl: 'Images/jollof_rice.png', slug: ''),
          MomentsDishesType(imageUrl: 'Images/grillades_plats.png', slug: ''),
          MomentsDishesType(imageUrl: 'Images/aloko.png', slug: ''),
          MomentsDishesType(imageUrl: 'Images/grillades_plats.png', slug: ''),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class MomentsDishesType extends StatelessWidget {
  String imageUrl;
  String slug;

  MomentsDishesType(
      {Key? key,
        required this.imageUrl,
        required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.amberAccent,
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset(
                    //'assets/images/topmenu/' + imageUrl + '.png',
                    imageUrl,
                    width: 47,
                    height: 47,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
