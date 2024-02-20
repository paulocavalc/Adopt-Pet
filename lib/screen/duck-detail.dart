// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/model/duck-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuckDetailScreen extends StatelessWidget {
  final Pato ducks;
  DuckDetailScreen(this.ducks);

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
                ducks.duck,
                width: double.infinity,
                height: 450,
                fit: BoxFit.cover
              ),
              Container(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_outline, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("1.950", style: TextStyle(color: Colors.white))),
                  Icon(Icons.comment_outlined, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("640", style: TextStyle(color: Colors.white))),
                  Icon(Icons.access_time, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("27 Janeiro, 2024", style: TextStyle(color: Colors.white))),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  ducks.title,
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
                  ducks.description,
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
