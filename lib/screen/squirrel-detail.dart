// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables

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
              Container(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_outline, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("430", style: TextStyle(color: Colors.white))),
                  Icon(Icons.comment_outlined, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("150", style: TextStyle(color: Colors.white))),
                  Icon(Icons.access_time, color: Color.fromARGB(255, 223, 204, 152)),
                  SizedBox(width: 10),
                  Expanded(child: Text("08 Fevereiro, 2024", style: TextStyle(color: Colors.white))),
                ],
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
