// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/model/dog-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DogDetailScreen extends StatelessWidget {
  final Cachorro dogs;
  DogDetailScreen(this.dogs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
        title: Center(
          child: Text("Adopt Pet",
              style: GoogleFonts.calistoga(
                  color: Color.fromARGB(255, 223, 204, 152), fontSize: 38)),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(dogs.dog,
                  width: double.infinity, height: 450, fit: BoxFit.cover),
              Container(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.access_time),
                  Icon(Icons.bookmark_outline),
                  Icon(Icons.favorite_outline),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  dogs.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 223, 204, 152),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  dogs.description,
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
