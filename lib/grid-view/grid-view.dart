// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/wallpapers/cat.dart';
import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:boa_tarde/wallpapers/dove.dart';
import 'package:boa_tarde/wallpapers/duck.dart';
import 'package:boa_tarde/wallpapers/fish.dart';
import 'package:boa_tarde/wallpapers/hen.dart';
import 'package:boa_tarde/wallpapers/horse.dart';
import 'package:boa_tarde/wallpapers/penguin.dart';
import 'package:boa_tarde/wallpapers/squirrel.dart';
import 'package:boa_tarde/wallpapers/turtle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridPetApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 254, 254, 230),
          centerTitle: true,
          title: Center(
            child: Text("Adopt Pet",
                style: GoogleFonts.calistoga(
                    color: Color.fromARGB(255, 18, 9, 2), fontSize: 38)
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            unselectedLabelColor: Color.fromARGB(255, 93, 93, 93),
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            labelPadding:
              EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0
            ),
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 18, 9, 2),
              //borderRadius: BorderRadius.circular(80)
            ),
            tabs: [
              Tab(
                text: 'Tudo',
              ),
              Tab(
                text: 'Cachorro',
              ),
              Tab(
                text: 'Cavalo',
              ),
              Tab(
                text: 'Esquilo',
              ),
              Tab(
                text: 'Galinha',
              ),
              Tab(
                text: 'Gato',
              ),
              Tab(
                text: 'Pato',
              ),
              Tab(
                text: 'Peixe',
              ),
              Tab(
                text: 'Pinguim',
              ),
              Tab(
                text: 'Pomba',
              ),
              Tab(
                text: 'Tartaruga',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tela_Cachorro(),
            Tela_Cachorro(),
            Tela_Cavalo(),
            Tela_Esquilo(),
            Tela_Galinha(),
            Tela_Gato(),
            Tela_Pato(),
            Tela_Peixe(),
            Tela_Pinguim(),
            Tela_Pomba(),
            Tela_Tartaruga(),
          ],
        ),
      ),
    );
  }
}
