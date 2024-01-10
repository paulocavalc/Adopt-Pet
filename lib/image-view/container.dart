// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:boa_tarde/image-view/story.dart';
import 'package:boa_tarde/model/modal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram Feature 41',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Instagram Feature 41'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Data> _images = [
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
    return Scaffold(
        appBar: AppBar(
          //title: Text(widget.title),
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          flexibleSpace: Image.asset("assets/icons/pet.jpg"),
          bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: StoryBar(),
        ),
        ),

        body: GridView.builder(
          itemCount: _images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              _images[index].image,
              fit: BoxFit.cover,
            );
          },
        ),

        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
        ],
          
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        ),
    );
  }
}
