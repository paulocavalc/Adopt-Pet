// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StoryPets extends StatelessWidget {
  const StoryPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
            height: 220,
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 182, 1, 1)
                      ),
                    ),
                  );
                }))
      ]),
    );
  }
}
