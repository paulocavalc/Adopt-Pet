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
  final String title;

  AllPages({required this.content, required this.title});

  static final List<AllPages> allPages = [
    AllPages(content: Tela_Cachorro(), title: 'Cachorro'),
    AllPages(content: Tela_Cavalo(), title: 'Cavalo'),
    AllPages(content: Tela_Esquilo(), title: 'Esquilo'),
    AllPages(content: Tela_Galinha(), title: 'Galinha'),
    AllPages(content: Tela_Gato(), title: 'Gato'),
    AllPages(content: Tela_Pato(), title: 'Pato'),
    AllPages(content: Tela_Peixe(), title: 'Peixe'),
    AllPages(content: Tela_Pinguim(), title: 'Pinguim'),
    AllPages(content: Tela_Pomba(), title: 'Pomba'),
    AllPages(content: Tela_Tartaruga(), title: 'Tartaruga'),
  ];
}
