// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Elefante extends StatefulWidget {
  const Tela_Elefante({super.key});

  @override
  State<Tela_Elefante> createState() => _Tela_ElefanteState();
}

class _Tela_ElefanteState extends State<Tela_Elefante>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/elefante1.jpg"),
    Wallpaper(image: "assets/images/elefante2.jpg"),
    Wallpaper(image: "assets/images/elefante3.jpg"),
    Wallpaper(image: "assets/images/elefante4.jpg"),
    Wallpaper(image: "assets/images/elefante5.jpg"),
    Wallpaper(image: "assets/images/elefante6.jpg"),
    Wallpaper(image: "assets/images/elefante7.jpg"),
    Wallpaper(image: "assets/images/elefante8.jpg"),
    Wallpaper(image: "assets/images/elefante9.jpg"),
    Wallpaper(image: "assets/images/elefante10.jpg"),
    Wallpaper(image: "assets/images/elefante11.jpg"),
    Wallpaper(image: "assets/images/elefante12.jpg"),
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
