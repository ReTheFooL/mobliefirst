import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstmoblie/model/activity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    callActivity();
  }

  Future<void> callActivity() async {
    print("Hello World Suisei");

    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);
    print(response.statusCode);
    print(response.body);

    setState(() {
      data = activityFromJson(response.body);
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });
  }

  Future<void> logout() async{
    await FirebaseAuth.instance.signOut();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'Menu Package',
                  style: TextStyle(fontSize: 24),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'Video',
                  style: TextStyle(fontSize: 24),
                ),
                leading: Icon(Icons.video_collection),
                onTap: () {
                  print('Menu Video');
                  Navigator.pushNamed(context, 'video');
                },
              ),
              ListTile(
                title: Text(
                  'Image',
                  style: TextStyle(fontSize: 24),
                ),
                leading: Icon(Icons.image),
                onTap: () {
                  print('Menu Image');
                  Navigator.pushNamed(context, 'image');
                },
              ),
              ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(fontSize: 24),
                ),
                leading: Icon(Icons.location_city),
                onTap: () {
                  print('Menu Location');
                  Navigator.pushNamed(context, 'location');
                },
              ),
              ListTile(
                title: Text(
                  'Store',
                  style: TextStyle(fontSize: 24),
                ),
                leading: Icon(Icons.storefront_outlined),
                onTap: () {
                  print('Menu store');
                  Navigator.pushNamed(context, 'store');
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 24),
                ),
                leading: Icon(Icons.logout),
                onTap: () {
                  print('Menu logout');
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api),
              SizedBox(
                width: 10,
              ),
              Text('Dashboard'),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.blue[200],
              width: 400,
              height: 150,
              child: Text(
                data?.activity ?? "กำลังโหลด",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.green[200],
              width: 400,
              height: 150,
              child: Text(
                data?.type ?? "",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.orange[400],
              width: 400,
              height: 150,
              child: Text(
                '${data?.participants ?? ""}',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.pink[200],
              width: 400,
              height: 150,
              child: Text(
                '${data?.price ?? ""}',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
