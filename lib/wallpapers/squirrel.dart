// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/squirrel-model.dart';
import 'package:flutter/material.dart';

class Tela_Esquilo extends StatefulWidget {
  const Tela_Esquilo({super.key});

  @override
  State<Tela_Esquilo> createState() => _Tela_EsquiloState();
}

class _Tela_EsquiloState extends State<Tela_Esquilo>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: GridView.builder(
        itemCount: squirrel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            squirrel[index].squirrel,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
