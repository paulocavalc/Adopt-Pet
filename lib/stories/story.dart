// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:boa_tarde/model/icon.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  final List<IconPet> _pets = [
    IconPet(icon: IcoFontIcons.dog),
    IconPet(icon: IcoFontIcons.pandaFace),
    IconPet(icon: IcoFontIcons.catAlt3),
    IconPet(icon: IcoFontIcons.butterflyAlt),
    IconPet(icon: IcoFontIcons.tiger),
    IconPet(icon: IcoFontIcons.bat),
    IconPet(icon: IcoFontIcons.bear),
    IconPet(icon: IcoFontIcons.bird),
    IconPet(icon: IcoFontIcons.penguin),
    IconPet(icon: IcoFontIcons.camel),
    IconPet(icon: IcoFontIcons.crab),
    IconPet(icon: IcoFontIcons.dolphin),
    IconPet(icon: IcoFontIcons.duckTracks),
    IconPet(icon: IcoFontIcons.fish5),
    IconPet(icon: IcoFontIcons.gorilla),
    IconPet(icon: IcoFontIcons.monkeyFace),
    IconPet(icon: IcoFontIcons.octopusAlt),
    IconPet(icon: IcoFontIcons.paw),
    IconPet(icon: IcoFontIcons.froggy),
    IconPet(icon: IcoFontIcons.woodpecker),
    IconPet(icon: IcoFontIcons.pandaFace),
    IconPet(icon: IcoFontIcons.frog),
    IconPet(icon: IcoFontIcons.pigeon),
    IconPet(icon: IcoFontIcons.lemur),
    IconPet(icon: IcoFontIcons.shrimpAlt),
    IconPet(icon: IcoFontIcons.squirrel),
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
