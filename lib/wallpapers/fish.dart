// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Peixe extends StatefulWidget {
  const Tela_Peixe({super.key});

  @override
  State<Tela_Peixe> createState() => _Tela_PeixeState();
}

class _Tela_PeixeState extends State<Tela_Peixe>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/peixe1.jpg"),
    Wallpaper(image: "assets/images/peixe2.jpg"),
    Wallpaper(image: "assets/images/peixe3.jpg"),
    Wallpaper(image: "assets/images/peixe4.jpg"),
    Wallpaper(image: "assets/images/peixe5.jpg"),
    Wallpaper(image: "assets/images/peixe6.jpg"),
    Wallpaper(image: "assets/images/peixe7.jpg"),
    Wallpaper(image: "assets/images/peixe8.jpg"),
    Wallpaper(image: "assets/images/peixe9.jpg"),
    Wallpaper(image: "assets/images/peixe10.jpg"),
    Wallpaper(image: "assets/images/peixe11.jpg"),
    Wallpaper(image: "assets/images/peixe12.jpg"),
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
