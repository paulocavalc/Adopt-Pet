// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/turtle-model.dart';
import 'package:flutter/material.dart';

class Tela_Tartaruga extends StatefulWidget {
  const Tela_Tartaruga({super.key});

  @override
  State<Tela_Tartaruga> createState() => _Tela_TartarugaState();
}

class _Tela_TartarugaState extends State<Tela_Tartaruga>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: turtle.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            turtle[index].turtle,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
