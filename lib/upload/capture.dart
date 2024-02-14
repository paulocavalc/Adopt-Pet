// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaptureImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: CaptureImagePage(),
    );
  }
}

class CaptureImagePage extends StatefulWidget {
  @override
  _CaptureImagePageState createState() => _CaptureImagePageState();
}

class _CaptureImagePageState extends State<CaptureImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
        centerTitle: true,
        title: Center(
          child: Text("Adopt Pet", 
            style: GoogleFonts.calistoga(
              color: Color.fromARGB(255, 223, 204, 152), 
              fontSize: 38
            )
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
    );
  }
}
