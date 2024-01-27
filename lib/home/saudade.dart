// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/loading/loading.dart';
import 'package:boa_tarde/model/wallpaper.dart';
import 'package:boa_tarde/stories/story.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaudadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: LoadingScreen(),
    );
  }
}

class MyHomeSaudadePage extends StatefulWidget {
  MyHomeSaudadePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeSaudadePageState createState() => _MyHomeSaudadePageState();
}

class _MyHomeSaudadePageState extends State<MyHomeSaudadePage> {
  final List _images = [
    Wallpaper(image: "assets/images/pet0.jpg"),
    Wallpaper(image: "assets/images/pet1.jpg"),
    Wallpaper(image: "assets/images/pet2.jpg"),
    Wallpaper(image: "assets/images/pet3.jpg"),
    Wallpaper(image: "assets/images/pet4.jpg"),
    Wallpaper(image: "assets/images/pet5.jpg"),
    Wallpaper(image: "assets/images/pet6.jpg"),
    Wallpaper(image: "assets/images/pet7.jpg"),
    Wallpaper(image: "assets/images/pet8.jpg"),
    Wallpaper(image: "assets/images/pet9.jpg"),
    Wallpaper(image: "assets/images/pet10.jpg"),
    Wallpaper(image: "assets/images/pet11.jpg"),
    Wallpaper(image: "assets/images/pet12.jpg"),
    Wallpaper(image: "assets/images/pet13.jpg"),
    Wallpaper(image: "assets/images/pet14.jpg"),
    Wallpaper(image: "assets/images/pet15.jpg"),
    Wallpaper(image: "assets/images/pet16.jpg"),
    Wallpaper(image: "assets/images/pet17.jpg"),
    Wallpaper(image: "assets/images/pet18.jpg"),
    Wallpaper(image: "assets/images/pet19.jpg"),
  ];

  int _index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SaudadeApp()),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        centerTitle: true,
        title: Center(
          child: Text("Adopt Pet",
              style: GoogleFonts.calistoga(
                  color: Color.fromARGB(255, 255, 98, 0), fontSize: 33)),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: StoryBar(),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
    );
  }
}
