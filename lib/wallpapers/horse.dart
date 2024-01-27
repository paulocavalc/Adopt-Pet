// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Cavalo extends StatefulWidget {
  const Tela_Cavalo({super.key});

  @override
  State<Tela_Cavalo> createState() => _Tela_CavaloState();
}

class _Tela_CavaloState extends State<Tela_Cavalo>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/cavalo1.jpg"),
    Wallpaper(image: "assets/images/cavalo2.jpg"),
    Wallpaper(image: "assets/images/cavalo3.jpg"),
    Wallpaper(image: "assets/images/cavalo4.jpg"),
    Wallpaper(image: "assets/images/cavalo5.jpg"),
    Wallpaper(image: "assets/images/cavalo6.jpg"),
    Wallpaper(image: "assets/images/cavalo7.jpg"),
    Wallpaper(image: "assets/images/cavalo8.jpg"),
    Wallpaper(image: "assets/images/cavalo9.jpg"),
    Wallpaper(image: "assets/images/cavalo10.jpg"),
    Wallpaper(image: "assets/images/cavalo11.jpg"),
    Wallpaper(image: "assets/images/cavalo12.jpg"),
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
