import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class SenseMode extends StatefulWidget {
  @override
  _SenseModeState createState() => _SenseModeState();
}

//TODO stop stream (it keeps on listening for ever)
class _SenseModeState extends State<SenseMode> {
  bool activate = false;
  _getSenso() {
    print("get ran");
    accelerometerEvents.listen((AccelerometerEvent event) {
      print("Accelero event ");

      //print(event);
      return 0;
    });

    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      //print("UserAccelEcent : ");
      return 0;
      // print(event);
    });

    gyroscopeEvents.listen((GyroscopeEvent event) {
      //print("Gyro event : ");
      return 0;
      //  print(event);
    });
  }

  void check_activate() {
    print("activatte is $activate");
    activate = !activate;
    if (activate == true) _getSenso();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
            onPressed: () {
              check_activate();
            },
            child: Text("Activate Sensor"))
      ],
    );
  }
}
