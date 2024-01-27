// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Lobo extends StatefulWidget {
  const Tela_Lobo({super.key});

  @override
  State<Tela_Lobo> createState() => _Tela_LoboState();
}

class _Tela_LoboState extends State<Tela_Lobo>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/lobo1.jpg"),
    Wallpaper(image: "assets/images/lobo2.jpg"),
    Wallpaper(image: "assets/images/lobo3.jpg"),
    Wallpaper(image: "assets/images/lobo4.jpg"),
    Wallpaper(image: "assets/images/lobo5.jpg"),
    Wallpaper(image: "assets/images/lobo6.jpg"),
    Wallpaper(image: "assets/images/lobo7.jpg"),
    Wallpaper(image: "assets/images/lobo8.jpg"),
    Wallpaper(image: "assets/images/lobo9.jpg"),
    Wallpaper(image: "assets/images/lobo10.jpg"),
    Wallpaper(image: "assets/images/lobo11.jpg"),
    Wallpaper(image: "assets/images/lobo12.jpg"),
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
