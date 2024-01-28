// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Galinha extends StatefulWidget {
  const Tela_Galinha({super.key});

  @override
  State<Tela_Galinha> createState() => _Tela_GalinhaState();
}

class _Tela_GalinhaState extends State<Tela_Galinha>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/galinha1.jpg"),
    Wallpaper(image: "assets/images/galinha2.jpg"),
    Wallpaper(image: "assets/images/galinha3.jpg"),
    Wallpaper(image: "assets/images/galinha4.jpg"),
    Wallpaper(image: "assets/images/galinha5.jpg"),
    Wallpaper(image: "assets/images/galinha6.jpg"),
    Wallpaper(image: "assets/images/galinha7.jpg"),
    Wallpaper(image: "assets/images/galinha8.jpg"),
    Wallpaper(image: "assets/images/galinha9.jpg"),
    Wallpaper(image: "assets/images/galinha10.jpg"),
    Wallpaper(image: "assets/images/galinha11.jpg"),
    Wallpaper(image: "assets/images/galinha12.jpg"),
  ];
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
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
    );
  }
}