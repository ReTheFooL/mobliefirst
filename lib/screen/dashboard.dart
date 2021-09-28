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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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