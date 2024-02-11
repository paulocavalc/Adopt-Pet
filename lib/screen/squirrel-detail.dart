// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, file_names

import 'package:boa_tarde/model/squirrel-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquirrelDetailScreen extends StatelessWidget {
  final Esquilo squirrels;
  SquirrelDetailScreen(this.squirrels);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                squirrels.squirrel,
                width: double.infinity,
                height: 450,
                fit: BoxFit.cover
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  squirrels.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 223, 204, 152),
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  squirrels.description,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}