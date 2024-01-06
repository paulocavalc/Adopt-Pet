// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StoryPets extends StatelessWidget {
  const StoryPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amber
        ),
      ),
    );
  }
}

//Column(
//        children: [
//          SizedBox(
//            height: 220,
//            child: ListView.builder(
//              itemCount: 20,
//              scrollDirection: Axis.horizontal,
//              itemBuilder: (context, index) {
//                return StoryPets();
//              },
//            ),
//          )
//        ],
//      ),