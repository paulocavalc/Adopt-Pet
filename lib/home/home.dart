// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/wallpapers/cat.dart';
import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:boa_tarde/loading/loading.dart';
import 'package:boa_tarde/wallpapers/dove.dart';
import 'package:boa_tarde/wallpapers/duck.dart';
import 'package:boa_tarde/wallpapers/fish.dart';
import 'package:boa_tarde/wallpapers/giraffe.dart';
import 'package:boa_tarde/wallpapers/hen.dart';
import 'package:boa_tarde/wallpapers/horse.dart';
import 'package:boa_tarde/wallpapers/penguin.dart';
import 'package:boa_tarde/wallpapers/squirrel.dart';
import 'package:boa_tarde/wallpapers/turtle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: LoadingScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeApp()),
        );
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
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
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          centerTitle: true,
          title: Center(
            child: Text("Adopt Pet",
                style: GoogleFonts.calistoga(
                    color: Color.fromARGB(255, 255, 98, 0), fontSize: 33)),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(5),
            labelColor: const Color.fromARGB(255, 255, 98, 0),
            unselectedLabelColor: const Color.fromARGB(255, 151, 151, 151),
            labelStyle: TextStyle(fontSize: 14),
            labelPadding: EdgeInsets.only(
              left: 30, right: 30, top: 0.8, bottom: 0.8
            ),
            indicator: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 255, 98, 0)),
              borderRadius: BorderRadius.circular(70)
            ),
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
                text: 'GIRAFA',
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
            Tela_Girafa(),
            Tela_Pato(),
            Tela_Peixe(),
            Tela_Pinguim(),
            Tela_Pomba(),
            Tela_Tartaruga(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pesquisa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Adicionar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          currentIndex: _index,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromARGB(255, 255, 98, 0),
          unselectedItemColor: Color.fromARGB(255, 151, 151, 151),
        ),
      ),
    );
  }
}
