// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Cachorro extends StatefulWidget {
  const Tela_Cachorro({super.key});

  @override
  State<Tela_Cachorro> createState() => _Tela_CachorroState();
}

class _Tela_CachorroState extends State<Tela_Cachorro>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/cachorro1.jpg"),
    Wallpaper(image: "assets/images/cachorro2.jpg"),
    Wallpaper(image: "assets/images/cachorro3.jpg"),
    Wallpaper(image: "assets/images/cachorro4.jpg"),
    Wallpaper(image: "assets/images/cachorro5.jpg"),
    Wallpaper(image: "assets/images/cachorro6.jpg"),
    Wallpaper(image: "assets/images/cachorro7.jpg"),
    Wallpaper(image: "assets/images/cachorro8.jpg"),
    Wallpaper(image: "assets/images/cachorro9.jpg"),
    Wallpaper(image: "assets/images/cachorro10.jpg"),
    Wallpaper(image: "assets/images/cachorro11.jpg"),
    Wallpaper(image: "assets/images/cachorro12.jpg"),
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
