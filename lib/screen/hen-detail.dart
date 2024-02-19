// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/model/hen-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HenDetailScreen extends StatelessWidget {
  final Galinha hens;
  HenDetailScreen(this.hens);

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
                hens.hen,
                width: double.infinity,
                height: 450,
                fit: BoxFit.cover
              ),
              Container(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.access_time, color: Color.fromARGB(255, 223, 204, 152)),
                  Icon(Icons.bookmark_outline, color: Color.fromARGB(255, 223, 204, 152)),
                  Icon(Icons.favorite_outline, color: Color.fromARGB(255, 223, 204, 152)),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  hens.title,
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
                  hens.description,
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
