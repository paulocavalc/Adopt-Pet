// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:boa_tarde/loading/splash.dart';
import 'package:boa_tarde/model/modal.dart';
import 'package:boa_tarde/story-bar/story.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adopt Pet',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
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
  final List<Data> _images = [
    Data(image: "assets/images/pet0.jpg"),
    Data(image: "assets/images/pet1.jpg"),
    Data(image: "assets/images/pet2.jpg"),
    Data(image: "assets/images/pet3.jpg"),
    Data(image: "assets/images/pet4.jpg"),
    Data(image: "assets/images/pet5.jpg"),
    Data(image: "assets/images/pet6.jpg"),
    Data(image: "assets/images/pet7.jpg"),
    Data(image: "assets/images/pet8.jpg"),
    Data(image: "assets/images/pet9.jpg"),
    Data(image: "assets/images/pet10.jpg"),
    Data(image: "assets/images/pet11.jpg"),
    Data(image: "assets/images/pet12.jpg"),
    Data(image: "assets/images/pet13.jpg"),
    Data(image: "assets/images/pet14.jpg"),
    Data(image: "assets/images/pet15.jpg"),
    Data(image: "assets/images/pet16.jpg"),
    Data(image: "assets/images/pet17.jpg"),
    Data(image: "assets/images/pet18.jpg"),
    Data(image: "assets/images/pet19.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        flexibleSpace: Image.asset("assets/icons/pet.jpg"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: StoryBar(),
        ),
      ),

      backgroundColor: Color.fromRGBO(43, 43, 43, 1),

      body: GridView.builder(
        itemCount: _images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            _images[index].image,
            fit: BoxFit.cover,
          );
        },
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
            icon: Icon(Icons.add_circle_outline),
            label: 'Adicionar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 128, 128, 128),
      ),
    );
  }
}
