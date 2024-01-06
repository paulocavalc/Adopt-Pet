// ignore_for_file: prefer_const_constructors

import 'package:boa_tarde/main.dart';
import 'package:flutter/material.dart';

class DogImage extends StatefulWidget {
  const DogImage({super.key});

  @override
  State<DogImage> createState() => _DogImageState();
}

class _DogImageState extends State<DogImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeApp()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
