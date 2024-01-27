// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Girafa extends StatefulWidget {
  const Tela_Girafa({super.key});

  @override
  State<Tela_Girafa> createState() => _Tela_GirafaState();
}

class _Tela_GirafaState extends State<Tela_Girafa>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/girafa1.jpg"),
    Wallpaper(image: "assets/images/girafa2.jpg"),
    Wallpaper(image: "assets/images/girafa3.jpg"),
    Wallpaper(image: "assets/images/girafa4.jpg"),
    Wallpaper(image: "assets/images/girafa5.jpg"),
    Wallpaper(image: "assets/images/girafa6.jpg"),
    Wallpaper(image: "assets/images/girafa7.jpg"),
    Wallpaper(image: "assets/images/girafa8.jpg"),
    Wallpaper(image: "assets/images/girafa9.jpg"),
    Wallpaper(image: "assets/images/girafa10.jpg"),
    Wallpaper(image: "assets/images/girafa11.jpg"),
    Wallpaper(image: "assets/images/girafa12.jpg"),
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
