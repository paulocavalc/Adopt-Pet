// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom TabBarView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> tabs = [
    'Tudo',
    'Cachorro',
    'Gato',
    'Cavalo',
    'Esquilo',
    'Tartaruga',
    'Vaca',
    'Tigre',
    'Onça',
    'Leão',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Custom TabBarView'),
          bottom: TabBar(
            isScrollable: true, // Enable scrolling if there are too many tabs
            tabs: tabs.map((tab) => Tab(text: tab)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((tab) {
            switch (tab) {
              case 'Tudo':
                return Center(child: Text('Tudo!'));
              case 'Cachorro':
                return Center(child: Text('Cachorro!'));
              case 'Gato':
                return Center(child: Text('Gato!'));
              case 'Cavalo':
                return Center(child: Text('Cavalo!'));
              case 'Esquilo':
                return Center(child: Text('Esquilo!'));
              case 'Tartaruga':
                return Center(child: Text('Tartaruga!'));
              case 'Vaca':
                return Center(child: Text('Vaca!'));
              case 'Tigre':
                return Center(child: Text('Tigre!'));
              case 'Onça':
                return Center(child: Text('Onça!'));
              case 'Leão':
                return Center(child: Text('Leão!'));
              default:
                return Center(child: Text('Tab not found!'));
            }
          }).toList(),
        ),
      ),
    );
  }
}
