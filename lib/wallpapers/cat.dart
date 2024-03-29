// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/cat-model.dart';
import 'package:boa_tarde/screen/cat-detail.dart';
import 'package:flutter/material.dart';

class Tela_Gato extends StatefulWidget {
  const Tela_Gato({super.key});

  @override
  State<Tela_Gato> createState() => _Tela_GatoState();
}

class _Tela_GatoState extends State<Tela_Gato>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: cat.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Gato cats = cat[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CatDetailScreen(cats)));
            },
            child: Image.network(
              cat[index].cat,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
