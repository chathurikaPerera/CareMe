import 'package:care_me/screens/background.dart';
import 'package:care_me/screens/signup/signup.dart';
import 'package:care_me/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: welcome(),
    );
  }
}
