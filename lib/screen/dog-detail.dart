// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:boa_tarde/model/dog-model.dart';
import 'package:flutter/material.dart';

class DogDetailScreen extends StatelessWidget {
  final Cachorro dogs;
  DogDetailScreen(this.dogs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dogs.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              dogs.dog
            )
          ],
        ),
      ),
    );
  }
}
