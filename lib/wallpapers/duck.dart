// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Pato extends StatefulWidget {
  const Tela_Pato({super.key});

  @override
  State<Tela_Pato> createState() => _Tela_PatoState();
}

class _Tela_PatoState extends State<Tela_Pato>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/pato1.jpg"),
    Wallpaper(image: "assets/images/pato2.jpg"),
    Wallpaper(image: "assets/images/pato3.jpg"),
    Wallpaper(image: "assets/images/pato4.jpg"),
    Wallpaper(image: "assets/images/pato5.jpg"),
    Wallpaper(image: "assets/images/pato6.jpg"),
    Wallpaper(image: "assets/images/pato7.jpg"),
    Wallpaper(image: "assets/images/pato8.jpg"),
    Wallpaper(image: "assets/images/pato9.jpg"),
    Wallpaper(image: "assets/images/pato10.jpg"),
    Wallpaper(image: "assets/images/pato11.jpg"),
    Wallpaper(image: "assets/images/pato12.jpg"),
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
