// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/dog-model.dart';
import 'package:flutter/material.dart';

class Tela_Cachorro extends StatefulWidget {
  const Tela_Cachorro({super.key});

  @override
  State<Tela_Cachorro> createState() => _Tela_CachorroState();
}

class _Tela_CachorroState extends State<Tela_Cachorro>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 254, 230),
      body: GridView.builder(
        itemCount: dog.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            dog[index].dog,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
