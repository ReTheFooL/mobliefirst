import 'package:flutter/material.dart';
import 'package:firstmoblie/config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        //margin: EdgeInsets.all(20),
        //width: size.width * 1,
        //height: size.height * 0.5,
        child: ListView(
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.2,
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Welcome to KMUTNB",
              style: TextStyle(
                fontSize: 32,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1550123309-3cf75e1d0c83?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: Colors.amber[900],
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('LOGIN'),
              onPressed: () {
                print("LOGIN!!");
                Navigator.pushNamed(context,'login');
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('SINGUP'),
              onPressed: () {
                print("SINGUP");
                Navigator.pushNamed(context,'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
