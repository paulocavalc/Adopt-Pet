// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Onca extends StatefulWidget {
  const Tela_Onca({super.key});

  @override
  State<Tela_Onca> createState() => _Tela_OncaState();
}

class _Tela_OncaState extends State<Tela_Onca>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/onca1.jpg"),
    Wallpaper(image: "assets/images/onca2.jpg"),
    Wallpaper(image: "assets/images/onca3.jpg"),
    Wallpaper(image: "assets/images/onca4.jpg"),
    Wallpaper(image: "assets/images/onca5.jpg"),
    Wallpaper(image: "assets/images/onca6.jpg"),
    Wallpaper(image: "assets/images/onca7.jpg"),
    Wallpaper(image: "assets/images/onca8.jpg"),
    Wallpaper(image: "assets/images/onca9.jpg"),
    Wallpaper(image: "assets/images/onca10.jpg"),
    Wallpaper(image: "assets/images/onca11.jpg"),
    Wallpaper(image: "assets/images/onca12.jpg"),
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
