// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Tartaruga extends StatefulWidget {
  const Tela_Tartaruga({super.key});

  @override
  State<Tela_Tartaruga> createState() => _Tela_TartarugaState();
}

class _Tela_TartarugaState extends State<Tela_Tartaruga>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/tartaruga1.jpg"),
    Wallpaper(image: "assets/images/tartaruga2.jpg"),
    Wallpaper(image: "assets/images/tartaruga3.jpg"),
    Wallpaper(image: "assets/images/tartaruga4.jpg"),
    Wallpaper(image: "assets/images/tartaruga5.jpg"),
    Wallpaper(image: "assets/images/tartaruga6.jpg"),
    Wallpaper(image: "assets/images/tartaruga7.jpg"),
    Wallpaper(image: "assets/images/tartaruga8.jpg"),
    Wallpaper(image: "assets/images/tartaruga9.jpg"),
    Wallpaper(image: "assets/images/tartaruga10.jpg"),
    Wallpaper(image: "assets/images/tartaruga11.jpg"),
    Wallpaper(image: "assets/images/tartaruga12.jpg"),
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
