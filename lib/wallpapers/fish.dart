// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/fish-model.dart';
import 'package:flutter/material.dart';

class Tela_Peixe extends StatefulWidget {
  const Tela_Peixe({super.key});

  @override
  State<Tela_Peixe> createState() => _Tela_PeixeState();
}

class _Tela_PeixeState extends State<Tela_Peixe>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 137, 95, 53),
      body: GridView.builder(
        itemCount: fish.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            fish[index].fish,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
