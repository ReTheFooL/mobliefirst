//import 'package:firstmoblie/homepage.dart';
import 'package:firstmoblie/index.dart';
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
      theme: ThemeData.dark(),
      home: Index());
  }
}
