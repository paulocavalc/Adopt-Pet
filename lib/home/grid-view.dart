// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Image_Screen extends StatefulWidget {
  const Image_Screen({super.key});

  @override
  State<Image_Screen> createState() => _Image_ScreenState();
}

class _Image_ScreenState extends State<Image_Screen>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/pet0.jpg"),
    Wallpaper(image: "assets/images/pet1.jpg"),
    Wallpaper(image: "assets/images/pet2.jpg"),
    Wallpaper(image: "assets/images/pet3.jpg"),
    Wallpaper(image: "assets/images/pet4.jpg"),
    Wallpaper(image: "assets/images/pet5.jpg"),
    Wallpaper(image: "assets/images/pet6.jpg"),
    Wallpaper(image: "assets/images/pet7.jpg"),
    Wallpaper(image: "assets/images/pet8.jpg"),
    Wallpaper(image: "assets/images/pet9.jpg"),
    Wallpaper(image: "assets/images/pet10.jpg"),
    Wallpaper(image: "assets/images/pet11.jpg"),
    Wallpaper(image: "assets/images/pet12.jpg"),
    Wallpaper(image: "assets/images/pet13.jpg"),
    Wallpaper(image: "assets/images/pet14.jpg"),
    Wallpaper(image: "assets/images/pet15.jpg"),
    Wallpaper(image: "assets/images/pet16.jpg"),
    Wallpaper(image: "assets/images/pet17.jpg"),
    Wallpaper(image: "assets/images/pet18.jpg"),
    Wallpaper(image: "assets/images/pet19.jpg"),
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
