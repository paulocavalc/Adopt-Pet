// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/all-pages/grid-view.dart';
import 'package:boa_tarde/upload/capture.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState(); 
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  final screens = [
    GridPetApp(),
    CaptureImageApp(),
    LoginPet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
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
        selectedItemColor: Color.fromARGB(255, 223, 204, 152),
        unselectedItemColor: Color.fromARGB(255, 157, 157, 157),
      ),
    );
  }
}
