// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:boa_tarde/wallpapers/cat.dart';
import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:boa_tarde/wallpapers/dove.dart';
import 'package:boa_tarde/wallpapers/duck.dart';
import 'package:boa_tarde/wallpapers/fish.dart';
import 'package:boa_tarde/wallpapers/hen.dart';
import 'package:boa_tarde/wallpapers/horse.dart';
import 'package:boa_tarde/wallpapers/penguin.dart';
import 'package:boa_tarde/wallpapers/squirrel.dart';
import 'package:boa_tarde/wallpapers/turtle.dart';
import 'package:flutter/material.dart';

class AllPages {
  final Widget content;

  AllPages({required this.content});

  static final List<AllPages> allPages = [
    AllPages(content: Tela_Cachorro()),
    AllPages(content: Tela_Cavalo()),
    AllPages(content: Tela_Esquilo()),
    AllPages(content: Tela_Galinha()),
    AllPages(content: Tela_Gato()),
    AllPages(content: Tela_Pato()),
    AllPages(content: Tela_Peixe()),
    AllPages(content: Tela_Pinguim()),
    AllPages(content: Tela_Pomba()),
    AllPages(content: Tela_Tartaruga()),
  ];
}

class PageViewer extends StatelessWidget {
  final AllPages page;

  PageViewer({required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(page.content.runtimeType.toString()),
      ),
      body: page.content,
    );
  }
}