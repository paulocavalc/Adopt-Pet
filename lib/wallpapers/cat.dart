// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Gato extends StatefulWidget {
  const Tela_Gato({super.key});

  @override
  State<Tela_Gato> createState() => _Tela_GatoState();
}

class _Tela_GatoState extends State<Tela_Gato>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/gato1.jpg"),
    Wallpaper(image: "assets/images/gato2.jpg"),
    Wallpaper(image: "assets/images/gato3.jpg"),
    Wallpaper(image: "assets/images/gato4.jpg"),
    Wallpaper(image: "assets/images/gato5.jpg"),
    Wallpaper(image: "assets/images/gato6.jpg"),
    Wallpaper(image: "assets/images/gato7.jpg"),
    Wallpaper(image: "assets/images/gato8.jpg"),
    Wallpaper(image: "assets/images/gato9.jpg"),
    Wallpaper(image: "assets/images/gato10.jpg"),
    Wallpaper(image: "assets/images/gato11.jpg"),
    Wallpaper(image: "assets/images/gato12.jpg"),
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
