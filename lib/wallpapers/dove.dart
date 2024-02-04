// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:boa_tarde/model/dove-model.dart';
import 'package:flutter/material.dart';

class Tela_Pomba extends StatefulWidget {
  const Tela_Pomba({super.key});

  @override
  State<Tela_Pomba> createState() => _Tela_PombaState();
}

class _Tela_PombaState extends State<Tela_Pomba>
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 254, 230),
      body: GridView.builder(
        itemCount: dove.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            dove[index].dove,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
