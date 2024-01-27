// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Vaca extends StatefulWidget {
  const Tela_Vaca({super.key});

  @override
  State<Tela_Vaca> createState() => _Tela_VacaState();
}

class _Tela_VacaState extends State<Tela_Vaca>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/vaca1.jpg"),
    Wallpaper(image: "assets/images/vaca2.jpg"),
    Wallpaper(image: "assets/images/vaca3.jpg"),
    Wallpaper(image: "assets/images/vaca4.jpg"),
    Wallpaper(image: "assets/images/vaca5.jpg"),
    Wallpaper(image: "assets/images/vaca6.jpg"),
    Wallpaper(image: "assets/images/vaca7.jpg"),
    Wallpaper(image: "assets/images/vaca8.jpg"),
    Wallpaper(image: "assets/images/vaca9.jpg"),
    Wallpaper(image: "assets/images/vaca10.jpg"),
    Wallpaper(image: "assets/images/vaca11.jpg"),
    Wallpaper(image: "assets/images/vaca12.jpg"),
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
