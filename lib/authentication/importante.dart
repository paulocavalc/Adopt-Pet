// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/wallpapers/cat.dart';
import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:boa_tarde/loading/loading.dart';
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

class HomePetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: LoadingScreen(),
    );
  }
}

class MyHomePetPage extends StatefulWidget {
  MyHomePetPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePetPageState createState() => _MyHomePetPageState();
}

class _MyHomePetPageState extends State<MyHomePetPage> {
  
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePetPage(title: 'Adopt Pet')));
        break;
      case 1:
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPet()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 137, 95, 53),
          centerTitle: true,
          title: Center(
            child: Text("Adopt Pet",
                style: GoogleFonts.calistoga(
                    color: Color.fromARGB(255, 46, 0, 0), fontSize: 38)),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(5),
            labelColor: Color.fromARGB(255, 255, 255, 255),
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
            labelStyle: TextStyle(fontSize: 14),
            labelPadding:
                EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
            indicator: BoxDecoration(
                color: Color.fromARGB(255, 46, 0, 0),
                borderRadius: BorderRadius.circular(80)),
            tabs: [
              Tab(
                text: 'CACHORRO',
              ),
              Tab(
                text: 'CAVALO',
              ),
              Tab(
                text: 'ESQUILO',
              ),
              Tab(
                text: 'GALINHA',
              ),
              Tab(
                text: 'GATO',
              ),
              Tab(
                text: 'PATO',
              ),
              Tab(
                text: 'PEIXE',
              ),
              Tab(
                text: 'PINGUIM',
              ),
              Tab(
                text: 'POMBA',
              ),
              Tab(
                text: 'TARTARUGA',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
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
        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 137, 95, 53),
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Adicionar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          //currentIndex: currentIndex,
          //onTap: _onItemTapped,
          selectedItemColor: Color.fromARGB(255, 46, 0, 0),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}