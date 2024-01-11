// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:boa_tarde/model/modal.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  final List<Pet> _pets = [
    Pet(icon: IcoFontIcons.dog),
    Pet(icon: IcoFontIcons.pandaFace),
    Pet(icon: IcoFontIcons.catAlt3),
    Pet(icon: IcoFontIcons.butterflyAlt),
    Pet(icon: IcoFontIcons.tiger),
    Pet(icon: IcoFontIcons.bat),
    Pet(icon: IcoFontIcons.bear),
    Pet(icon: IcoFontIcons.bird),
    Pet(icon: IcoFontIcons.penguin),
    Pet(icon: IcoFontIcons.camel),
    Pet(icon: IcoFontIcons.crab),
    Pet(icon: IcoFontIcons.dolphin),
    Pet(icon: IcoFontIcons.duckTracks),
    Pet(icon: IcoFontIcons.fish5),
    Pet(icon: IcoFontIcons.gorilla),
    Pet(icon: IcoFontIcons.monkeyFace),
    Pet(icon: IcoFontIcons.octopusAlt),
    Pet(icon: IcoFontIcons.paw),
    Pet(icon: IcoFontIcons.froggy),
    Pet(icon: IcoFontIcons.woodpecker),
    Pet(icon: IcoFontIcons.pandaFace),
    Pet(icon: IcoFontIcons.frog),
    Pet(icon: IcoFontIcons.pigeon),
    Pet(icon: IcoFontIcons.lemur),
    Pet(icon: IcoFontIcons.shrimpAlt),
    Pet(icon: IcoFontIcons.squirrel),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 60,
      child: ListView.builder(
        itemCount: _pets.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 151, 151, 151),
              child: Icon(
                _pets[index].icon,
                color: const Color.fromARGB(255, 0, 0, 0),
                size: 35,
              ),
              radius: 25,
            ),
          );
        },
      ),
    );
  }
}
