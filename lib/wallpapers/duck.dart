// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/duck-model.dart';
import 'package:boa_tarde/screen/duck-detail.dart';
import 'package:flutter/material.dart';

class Tela_Pato extends StatefulWidget {
  const Tela_Pato({super.key});

  @override
  State<Tela_Pato> createState() => _Tela_PatoState();
}

class _Tela_PatoState extends State<Tela_Pato>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: duck.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Pato ducks = duck[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DuckDetailScreen(ducks)));
            },
            child: Image.network(
              duck[index].duck,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
