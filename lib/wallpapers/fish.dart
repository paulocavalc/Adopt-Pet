// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/fish-model.dart';
import 'package:boa_tarde/screen/fish-detail.dart';
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
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: fish.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Peixe fishs = fish[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FishDetailScreen(fishs)));
            },
            child: Image.network(
              fish[index].fish,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
