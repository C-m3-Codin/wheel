import 'package:http/http.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wheels/senseMode.dart';

import 'basicControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Wheels"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            )
            //actions: <Widget>[],
            ),
        body: TabBarView(
          children: [
            BasicControl(checked: _checked),
            SenseMode(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    ));
  }
}
