// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors

import 'package:boa_tarde/model/modal.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  final List<Data> _stories = [
    Data(image: "assets/images/pet0.jpg"),
    Data(image: "assets/images/pet1.jpg"),
    Data(image: "assets/images/pet2.jpg"),
    Data(image: "assets/images/pet3.jpg"),
    Data(image: "assets/images/pet4.jpg"),
    Data(image: "assets/images/pet5.jpg"),
    Data(image: "assets/images/pet6.jpg"),
    Data(image: "assets/images/pet7.jpg"),
    Data(image: "assets/images/pet8.jpg"),
    Data(image: "assets/images/pet9.jpg"),
    Data(image: "assets/images/pet10.jpg"),
    Data(image: "assets/images/pet11.jpg"),
    Data(image: "assets/images/pet12.jpg"),
    Data(image: "assets/images/pet13.jpg"),
    Data(image: "assets/images/pet14.jpg"),
    Data(image: "assets/images/pet15.jpg"),
    Data(image: "assets/images/pet16.jpg"),
    Data(image: "assets/images/pet17.jpg"),
    Data(image: "assets/images/pet18.jpg"),
    Data(image: "assets/images/pet19.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 50.0,
      child: ListView.builder(
        itemCount: _stories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(_stories[index].image),
              radius: 20.0,
            ),
          );
        },
      ),
    );    
  }
}