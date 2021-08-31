//import 'package:firstmoblie/homepage.dart';
import 'package:firstmoblie/config/constant.dart';
import 'package:firstmoblie/index.dart';
import 'package:firstmoblie/screen/login.dart';
import 'package:firstmoblie/screen/register.dart';
import 'package:flutter/material.dart';

void main() {
  print('Hello World');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login' : (context) => Login(),
        'register' : (context) => Register(),
      },
      home: Index());
  }
}
