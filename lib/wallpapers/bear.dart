// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Urso extends StatefulWidget {
  const Tela_Urso({super.key});

  @override
  State<Tela_Urso> createState() => _Tela_UrsoState();
}

class _Tela_UrsoState extends State<Tela_Urso>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/urso1.jpg"),
    Wallpaper(image: "assets/images/urso2.jpg"),
    Wallpaper(image: "assets/images/urso3.jpg"),
    Wallpaper(image: "assets/images/urso4.jpg"),
    Wallpaper(image: "assets/images/urso5.jpg"),
    Wallpaper(image: "assets/images/urso6.jpg"),
    Wallpaper(image: "assets/images/urso7.jpg"),
    Wallpaper(image: "assets/images/urso8.jpg"),
    Wallpaper(image: "assets/images/urso9.jpg"),
    Wallpaper(image: "assets/images/urso10.jpg"),
    Wallpaper(image: "assets/images/urso11.jpg"),
    Wallpaper(image: "assets/images/urso12.jpg"),
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
