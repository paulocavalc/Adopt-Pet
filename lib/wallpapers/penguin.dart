// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Pinguim extends StatefulWidget {
  const Tela_Pinguim({super.key});

  @override
  State<Tela_Pinguim> createState() => _Tela_PinguimState();
}

class _Tela_PinguimState extends State<Tela_Pinguim>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/pinguim1.jpg"),
    Wallpaper(image: "assets/images/pinguim2.jpg"),
    Wallpaper(image: "assets/images/pinguim3.jpg"),
    Wallpaper(image: "assets/images/pinguim4.jpg"),
    Wallpaper(image: "assets/images/pinguim5.jpg"),
    Wallpaper(image: "assets/images/pinguim6.jpg"),
    Wallpaper(image: "assets/images/pinguim7.jpg"),
    Wallpaper(image: "assets/images/pinguim8.jpg"),
    Wallpaper(image: "assets/images/pinguim9.jpg"),
    Wallpaper(image: "assets/images/pinguim10.jpg"),
    Wallpaper(image: "assets/images/pinguim11.jpg"),
    Wallpaper(image: "assets/images/pinguim12.jpg"),
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
