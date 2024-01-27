// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/wallpaper.dart';
import 'package:flutter/material.dart';

class Tela_Pomba extends StatefulWidget {
  const Tela_Pomba({super.key});

  @override
  State<Tela_Pomba> createState() => _Tela_PombaState();
}

class _Tela_PombaState extends State<Tela_Pomba>
    with AutomaticKeepAliveClientMixin {
  final List _images = [
    Wallpaper(image: "assets/images/pomba1.jpg"),
    Wallpaper(image: "assets/images/pomba2.jpg"),
    Wallpaper(image: "assets/images/pomba3.jpg"),
    Wallpaper(image: "assets/images/pomba4.jpg"),
    Wallpaper(image: "assets/images/pomba5.jpg"),
    Wallpaper(image: "assets/images/pomba6.jpg"),
    Wallpaper(image: "assets/images/pomba7.jpg"),
    Wallpaper(image: "assets/images/pomba8.jpg"),
    Wallpaper(image: "assets/images/pomba9.jpg"),
    Wallpaper(image: "assets/images/pomba10.jpg"),
    Wallpaper(image: "assets/images/pomba11.jpg"),
    Wallpaper(image: "assets/images/pomba12.jpg"),
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
