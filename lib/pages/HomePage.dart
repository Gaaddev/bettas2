import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/MomentsDishesWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Container(
             padding: const EdgeInsets.all(0.1),
             child: SizedBox(
               width: double.infinity,
               height: 50,
               child: TextFormField(
                 decoration: InputDecoration(
                   focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Color(0xFFe6e1e1),
                       width: 1.0,
                     ),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: const BorderSide(
                       color: Color(0xFFe6e1e1),
                       width: 1.0,
                     ),
                     borderRadius: BorderRadius.circular(20),
                   ),
                   fillColor: Colors.black45,
                   hintStyle: TextStyle(),
                   hintText: 'Rechercher',
                   filled: true,
                   prefixIcon: IconButton(
                     icon: const Icon(
                       Icons.menu,
                       color: Color(0xFFfd2c2c),
                       size: 30,
                     ),
                     onPressed: () {},
                   ),
                   suffixIcon: IconButton(
                     onPressed: () {},
                     icon: const Icon(
                       Icons.notifications_none,
                       color: Color(0xFFfd2c2c),
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ),
         body: Container(
          height: 650,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 1,
              ),
              Container(
                height: 450,
                  child: const MomentsDishesWidget(),
              ),
              Container(
                padding: const EdgeInsets.only(left: 100,),
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Food of the day'),
                    Card(
                      color: Colors.white70,
                      //elevation: 0,
                      child: Align(
                        //alignment: Alignment.topRight,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 3,
                            left: 5,
                          ),
                          child: Row(
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
            ],
          ),
      ),
       );
  }
}
