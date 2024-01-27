// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Tubarao extends StatefulWidget {
  const Tela_Tubarao({super.key});

  @override
  State<Tela_Tubarao> createState() => _Tela_TubaraoState();
}

class _Tela_TubaraoState extends State<Tela_Tubarao>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/tubarao1.jpg"),
    Wallpaper(image: "assets/images/tubarao2.jpg"),
    Wallpaper(image: "assets/images/tubarao3.jpg"),
    Wallpaper(image: "assets/images/tubarao4.jpg"),
    Wallpaper(image: "assets/images/tubarao5.jpg"),
    Wallpaper(image: "assets/images/tubarao6.jpg"),
    Wallpaper(image: "assets/images/tubarao7.jpg"),
    Wallpaper(image: "assets/images/tubarao8.jpg"),
    Wallpaper(image: "assets/images/tubarao9.jpg"),
    Wallpaper(image: "assets/images/tubarao10.jpg"),
    Wallpaper(image: "assets/images/tubarao11.jpg"),
    Wallpaper(image: "assets/images/tubarao12.jpg"),
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
