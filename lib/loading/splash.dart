// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:boa_tarde/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset("assets/icons/logo.png"),
                width: 150,
              ),
            ),
          ],
        )
      )
    );
  }
}
