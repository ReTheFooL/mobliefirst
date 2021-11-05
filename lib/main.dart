//import 'package:firstmoblie/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firstmoblie/config/constant.dart';
import 'package:firstmoblie/index.dart';
import 'package:firstmoblie/screen/Image.dart';
import 'package:firstmoblie/screen/Location.dart';
import 'package:firstmoblie/screen/dashboard.dart';
import 'package:firstmoblie/screen/firebaselogin.dart';
import 'package:firstmoblie/screen/firebaseregister.dart';
import 'package:firstmoblie/screen/login.dart';
import 'package:firstmoblie/screen/register.dart';
import 'package:firstmoblie/screen/store.dart';
import 'package:firstmoblie/screen/video.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  print('Hello World');

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



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
        'login' : (context) => FirebaseLogin(),
        'register' : (context) => FirebaseRegister(),
        'dashboard' : (context)=> Dashboard(),
        'video' : (context)=> Video(),
        'image' : (context)=> ImagePro(),
        'location' : (context)=> Location(),
        'store' : (context)=> Store(),
      },
      home: Index());
  }
}
