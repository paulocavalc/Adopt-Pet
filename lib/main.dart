// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/modal.dart';
import 'package:boa_tarde/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class HomeApp extends StatelessWidget {
  final List _photos = [
    Data(image: "assets/images/pet0.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet1.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet2.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet3.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet4.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet5.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet6.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet7.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet8.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet9.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet10.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet11.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet12.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet13.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet14.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet15.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet16.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet17.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet18.jpg", text: "João Paulo"),
    Data(image: "assets/images/pet19.jpg", text: "João Paulo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        title: Text("ADOPT PET"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(47, 47, 47, 1),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: _photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(_photos[index].image),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _photos[index].text, 
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                )
              ],
            );
          }
      ),
    );
  }
}
