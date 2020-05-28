import 'package:http/http.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  dynamic posques() async* {
    print("right");
    var url = '192.168.43.90:3000';
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wheels"),
          //actions: <Widget>[],
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 20),
            SizedBox(height: 20),
            GestureDetector(
 onTapDown: (TapDownDetails details) async {
                    print("up on");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json = '{"dir":"up"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },


                  onTapUp: (TapUpDetails details) async {
                    print("up off");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json =
                        '{"dir":"stop"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },

                  
                  child: RaisedButton(child: Text("up"), onPressed: null),
            ),
            SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTapDown: (TapDownDetails details) async {
                    print("right on");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json = '{"dir":"left"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },


                  onTapUp: (TapUpDetails details) async {
                    print("right off");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json =
                        '{"dir":"stop"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },

                  
                  child: RaisedButton(child: Text("Left"), onPressed: null),
                ),
                SizedBox(),
                GestureDetector(


                  onTapDown: (TapDownDetails details) async {
                    print("right on");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json = '{"dir":"right"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },


                  onTapUp: (TapUpDetails details) async {
                    print("right off");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json =
                        '{"dir":"stop"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },

                  
                  child: RaisedButton(child: Text("Right"), onPressed: null),
                )
              ],
            ),



            SizedBox(height: 20),



            GestureDetector(



              onTapDown: (TapDownDetails details)  async {
                    print("Down");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json = '{"dir":"down"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },


              onTapUp: (TapUpDetails details)  async {
                    print("Down");

                    String url = 'http://192.168.43.191:80/';
                    Map<String, String> headers = {
                      "Content-type": "application/json"
                    };
                    String json = '{"dir":"stop"}'; // make POST request
                    Response response = await post(url,
                        headers: headers,
                        body: json); // check the status code for the result
                    int statusCode = response.statusCode;
                    print("\n\n\n0 status code is ");
                    print(statusCode);
                  },



              child: RaisedButton(
                child: Text("Down"),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
