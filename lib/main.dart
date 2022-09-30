import 'package:flutter/material.dart';
import 'package:bettas/pages/LoginPage.dart';

const d_oronge = Color(0xFFFFA600);

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.white,
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
      ),
      home: const LoginPage(),
    ));
