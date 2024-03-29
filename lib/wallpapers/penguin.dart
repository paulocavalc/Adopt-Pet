// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/penguin-model.dart';
import 'package:boa_tarde/screen/penguin-detail.dart';
import 'package:flutter/material.dart';

class Tela_Pinguim extends StatefulWidget {
  const Tela_Pinguim({super.key});

  @override
  State<Tela_Pinguim> createState() => _Tela_PinguimState();
}

class _Tela_PinguimState extends State<Tela_Pinguim>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: penguin.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Pinguim penguins = penguin[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PenguinDetailScreen(penguins)));
            },
            child: Image.network(
              penguin[index].penguin,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
