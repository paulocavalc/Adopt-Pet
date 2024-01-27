// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Macaco extends StatefulWidget {
  const Tela_Macaco({super.key});

  @override
  State<Tela_Macaco> createState() => _Tela_MacacoState();
}

class _Tela_MacacoState extends State<Tela_Macaco>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/macaco1.jpg"),
    Wallpaper(image: "assets/images/macaco2.jpg"),
    Wallpaper(image: "assets/images/macaco3.jpg"),
    Wallpaper(image: "assets/images/macaco4.jpg"),
    Wallpaper(image: "assets/images/macaco5.jpg"),
    Wallpaper(image: "assets/images/macaco6.jpg"),
    Wallpaper(image: "assets/images/macaco7.jpg"),
    Wallpaper(image: "assets/images/macaco8.jpg"),
    Wallpaper(image: "assets/images/macaco9.jpg"),
    Wallpaper(image: "assets/images/macaco10.jpg"),
    Wallpaper(image: "assets/images/macaco11.jpg"),
    Wallpaper(image: "assets/images/macaco12.jpg"),
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
