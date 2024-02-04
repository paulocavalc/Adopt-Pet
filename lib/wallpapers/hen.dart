// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/hen-model.dart';
import 'package:flutter/material.dart';

class Tela_Galinha extends StatefulWidget {
  const Tela_Galinha({super.key});

  @override
  State<Tela_Galinha> createState() => _Tela_GalinhaState();
}

class _Tela_GalinhaState extends State<Tela_Galinha>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 195, 163),
      body: GridView.builder(
        itemCount: hen.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            hen[index].hen,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
