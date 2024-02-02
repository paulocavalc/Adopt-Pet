// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/horse-model.dart';
import 'package:flutter/material.dart';

class Tela_Cavalo extends StatefulWidget {
  const Tela_Cavalo({super.key});

  @override
  State<Tela_Cavalo> createState() => _Tela_CavaloState();
}

class _Tela_CavaloState extends State<Tela_Cavalo>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 220, 222),
      body: GridView.builder(
        itemCount: horse.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            horse[index].horse,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
