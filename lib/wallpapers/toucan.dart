// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Tucano extends StatefulWidget {
  const Tela_Tucano({super.key});

  @override
  State<Tela_Tucano> createState() => _Tela_TucanoState();
}

class _Tela_TucanoState extends State<Tela_Tucano>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/tucano1.jpg"),
    Wallpaper(image: "assets/images/tucano2.jpg"),
    Wallpaper(image: "assets/images/tucano3.jpg"),
    Wallpaper(image: "assets/images/tucano4.jpg"),
    Wallpaper(image: "assets/images/tucano5.jpg"),
    Wallpaper(image: "assets/images/tucano6.jpg"),
    Wallpaper(image: "assets/images/tucano7.jpg"),
    Wallpaper(image: "assets/images/tucano8.jpg"),
    Wallpaper(image: "assets/images/tucano9.jpg"),
    Wallpaper(image: "assets/images/tucano10.jpg"),
    Wallpaper(image: "assets/images/tucano11.jpg"),
    Wallpaper(image: "assets/images/tucano12.jpg"),
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
