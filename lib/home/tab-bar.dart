// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_field, unused_element, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/wallpapers/dog.dart';
import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          title: Text(
            'Adopt Pet',
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.cable),
            ),
            Tab(
              icon: Icon(Icons.gpp_good_outlined),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            
          ],
        ),
      ), 
    );
  }
}
