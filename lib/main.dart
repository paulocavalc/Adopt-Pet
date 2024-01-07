// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/authentication/login.dart';
import 'package:boa_tarde/home/story.dart';
import 'package:boa_tarde/image-view/dog.dart';
import 'package:boa_tarde/model/modal.dart';
import 'package:boa_tarde/loading/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class HomeApp extends StatelessWidget {
  final List _photos = [
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
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        flexibleSpace: Image.asset("assets/icons/pet.jpg"),
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          itemCount: _photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DogImage()));
              },
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(_photos[index].image),
                    fit: BoxFit.cover
                  )
                ),
              ),
            );
          }
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        child: Icon(Icons.add, size: 30),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 0, 0, 0),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeApp()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(Icons.notifications_active_outlined),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StoryPets()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
