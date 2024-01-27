// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Tigre extends StatefulWidget {
  const Tela_Tigre({super.key});

  @override
  State<Tela_Tigre> createState() => _Tela_TigreState();
}

class _Tela_TigreState extends State<Tela_Tigre>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/tiger1.jpg"),
    Wallpaper(image: "assets/images/tiger2.jpg"),
    Wallpaper(image: "assets/images/tiger3.jpg"),
    Wallpaper(image: "assets/images/tiger4.jpg"),
    Wallpaper(image: "assets/images/tiger5.jpg"),
    Wallpaper(image: "assets/images/tiger6.jpg"),
    Wallpaper(image: "assets/images/tiger7.jpg"),
    Wallpaper(image: "assets/images/tiger8.jpg"),
    Wallpaper(image: "assets/images/tiger9.jpg"),
    Wallpaper(image: "assets/images/tiger10.jpg"),
    Wallpaper(image: "assets/images/tiger11.jpg"),
    Wallpaper(image: "assets/images/tiger12.jpg"),
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
