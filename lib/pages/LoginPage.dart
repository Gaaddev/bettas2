import 'package:bettas/main.dart';
import 'package:flutter/material.dart';
import 'package:bettas/pages/Welcome_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: const Center(

        child: Text('Profil'),
      ),
    );
  }
}
