// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Esquilo extends StatefulWidget {
  const Tela_Esquilo({super.key});

  @override
  State<Tela_Esquilo> createState() => _Tela_EsquiloState();
}

class _Tela_EsquiloState extends State<Tela_Esquilo>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/esquilo1.jpg"),
    Wallpaper(image: "assets/images/esquilo2.jpg"),
    Wallpaper(image: "assets/images/esquilo3.jpg"),
    Wallpaper(image: "assets/images/esquilo4.jpg"),
    Wallpaper(image: "assets/images/esquilo5.jpg"),
    Wallpaper(image: "assets/images/esquilo6.jpg"),
    Wallpaper(image: "assets/images/esquilo7.jpg"),
    Wallpaper(image: "assets/images/esquilo8.jpg"),
    Wallpaper(image: "assets/images/esquilo9.jpg"),
    Wallpaper(image: "assets/images/esquilo10.jpg"),
    Wallpaper(image: "assets/images/esquilo11.jpg"),
    Wallpaper(image: "assets/images/esquilo12.jpg"),
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
