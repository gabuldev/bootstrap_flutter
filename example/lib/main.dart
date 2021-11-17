import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldBootstrap(children: [
        Component(
            style: 'lg-4 md-4 sm-4 xs-4 xs:h/4',
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.green,
             
            )),
        Component(
            style: 'lg-4 md-4 sm-4 xs-4',
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.red,
            )),
        Component(
            style: 'lg-4 md-4 sm-4 xs-4',
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.blue,
            ))
      ]),
    );
  }
}
