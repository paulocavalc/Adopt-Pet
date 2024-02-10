// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

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
        backgroundColor: Color.fromARGB(255, 195, 195, 193),
        title: Text(dogs.title,
          style: GoogleFonts.calistoga(
            color: Color.fromARGB(255, 0, 0, 0), 
            fontSize: 30
          )
        ),
      ),
      backgroundColor: Color.fromARGB(255, 195, 195, 193),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              dogs.dog,
              width: double.infinity,
              height: 450,
              fit: BoxFit.cover
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                dogs.description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.calistoga(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
