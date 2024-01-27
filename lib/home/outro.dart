// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/wallpapers/bear.dart';
import 'package:boa_tarde/wallpapers/cat.dart';
import 'package:boa_tarde/wallpapers/cow.dart';
import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:boa_tarde/loading/splash.dart';
import 'package:boa_tarde/wallpapers/dove.dart';
import 'package:boa_tarde/wallpapers/duck.dart';
import 'package:boa_tarde/wallpapers/elephant.dart';
import 'package:boa_tarde/wallpapers/fish.dart';
import 'package:boa_tarde/wallpapers/giraffe.dart';
import 'package:boa_tarde/wallpapers/hen.dart';
import 'package:boa_tarde/wallpapers/horse.dart';
import 'package:boa_tarde/wallpapers/monkey.dart';
import 'package:boa_tarde/wallpapers/ounce.dart';
import 'package:boa_tarde/wallpapers/penguin.dart';
import 'package:boa_tarde/wallpapers/shark.dart';
import 'package:boa_tarde/wallpapers/squirrel.dart';
import 'package:boa_tarde/wallpapers/tiger.dart';
import 'package:boa_tarde/wallpapers/toucan.dart';
import 'package:boa_tarde/wallpapers/turtle.dart';
import 'package:boa_tarde/wallpapers/wolf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: SplashScreen(),
    );
  }
}

class MyHomeOutroPage extends StatefulWidget {
  MyHomeOutroPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeOutroPageState createState() => _MyHomeOutroPageState();
}

class _MyHomeOutroPageState extends State<MyHomeOutroPage> {
  
  int _index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
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
      length: 20,
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
            tabs: [
              Tab(
                text: 'Cachorro',
              ),
              Tab(
                text: 'Gato',
              ),
              Tab(
                text: 'Galinha',
              ),
              Tab(
                text: 'Peixe',
              ),
              Tab(
                text: 'Esquilo',
              ),
              Tab(
                text: 'Pato',
              ),
              Tab(
                text: 'Urso',
              ),
              Tab(
                text: 'Cavalo',
              ),
              Tab(
                text: 'Pomba',
              ),
              Tab(
                text: 'Macaco',
              ),
              Tab(
                text: 'Vaca',
              ),
              Tab(
                text: 'Elefante',
              ),
              Tab(
                text: 'Lobo',
              ),
              Tab(
                text: 'Tubarão',
              ),
              Tab(
                text: 'Tartaruga',
              ),
              Tab(
                text: 'Pinguim',
              ),
              Tab(
                text: 'Girafa',
              ),
              Tab(
                text: 'Onça',
              ),
              Tab(
                text: 'Tigre',
              ),
              Tab(
                text: 'Tucano',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tela_Cachorro(),
            Tela_Gato(),
            Tela_Galinha(),
            Tela_Peixe(),
            Tela_Esquilo(),
            Tela_Pato(),
            Tela_Urso(),
            Tela_Cavalo(),
            Tela_Pomba(),
            Tela_Macaco(),
            Tela_Vaca(),
            Tela_Elefante(),
            Tela_Lobo(),
            Tela_Tubarao(),
            Tela_Tartaruga(),
            Tela_Pinguim(),
            Tela_Girafa(),
            Tela_Onca(),
            Tela_Tigre(),
            Tela_Tucano(),
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
              label: 'Minha Conta',
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
