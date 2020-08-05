import 'package:flutter/material.dart';
import 'package:http/http.dart';

class BasicControl extends StatelessWidget {
  const BasicControl({
    Key key,
    @required bool checked,
  })  : _checked = checked,
        super(key: key);

  final bool _checked;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 20),
        SizedBox(height: 20),
        GestureDetector(
          onTapDown: (TapDownDetails details) async {
            print("up on");
            Response response = await get('http://192.168.4.1:8080/?State=F');

            print(response.statusCode);
            print("up going");
          },
          onTapUp: (TapUpDetails details) async {
            if (_checked == false) {
              print("stop go");
              Response response = await get('http://192.168.4.1:8080/?State=S');

              print(response.statusCode);
              print("stopped");
            } else {}
          },
          child: RaisedButton(child: Text("up"), onPressed: null),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTapDown: (TapDownDetails details) async {
                print("Left on");
                Response response =
                    await get('http://192.168.4.1:8080/?State=L');

                print(response.statusCode);
                print("Left going");
              },
              onTapUp: (TapUpDetails details) async {
                print("stop go");
                Response response =
                    await get('http://192.168.4.1:8080/?State=S');

                print(response.statusCode);
                print("stopped");
              },
              child: RaisedButton(child: Text("Left"), onPressed: null),
            ),
            SizedBox(),
            GestureDetector(
              onTapDown: (TapDownDetails details) async {
                print("Right on");
                Response response =
                    await get('http://192.168.4.1:8080/?State=R');

                print(response.statusCode);
                print("Right going");
              },
              onTapUp: (TapUpDetails details) async {
                print("stop go");
                Response response =
                    await get('http://192.168.4.1:8080/?State=S');

                print(response.statusCode);
                print("stopped");
              },
              child: RaisedButton(child: Text("Right"), onPressed: null),
            )
          ],
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTapDown: (TapDownDetails details) async {
            print("back on");
            Response response = await get('http://192.168.4.1:8080/?State=B');

            print(response.statusCode);
            print("backing ");
          },
          onTapUp: (TapUpDetails details) async {
            print("back stop");
            Response response = await get('http://192.168.4.1:8080/?State=S');

            print(response.statusCode);
            print("back stopped");
          },
          child: RaisedButton(
            child: Text("Down"),
            onPressed: null,
          ),
        ),
        // CheckboxListTile(
        //     title: Text("Keep pressed"),
        //     //onChanged: null,

        //     value: _checked,
        //     onChanged: (bool value) {
        //       setState(() {
        //         _checked = !(_checked);
        //         print(_checked);
        //         //_checked=value;
        //       });
        //     })
      ],
    );
  }

  get(String s) {}
}
