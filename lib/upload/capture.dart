// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, avoid_print, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class CaptureImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adopt Pet',
      home: CaptureImagePage(),
    );
  }
}

class CaptureImagePage extends StatefulWidget {
  @override
  _CaptureImagePageState createState() => _CaptureImagePageState();
}

class _CaptureImagePageState extends State<CaptureImagePage> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
      
    } on PlatformException catch (e) {
      print("Falha ao escolher a imagem: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
        centerTitle: true,
        title: Center(
          child: Text("Adopt Pet",
              style: GoogleFonts.calistoga(
                  color: Color.fromARGB(255, 223, 204, 152), fontSize: 38)),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Spacer(),
            image != null
                ? Image.file(
                    image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : FlutterLogo(size: 100),
            SizedBox(height: 25),
            Text(
              "Image Packer",
              style: TextStyle(
                  color: Color.fromARGB(255, 223, 204, 152),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            buildButton(
              title: "Escolha a Galeria",
              icon: Icons.image_outlined,
              onClicked: () => pickImage(ImageSource.gallery),
            ),
            SizedBox(height: 24),
            buildButton(
              title: "Escolha a Câmera",
              icon: Icons.camera_alt_outlined,
              onClicked: () => pickImage(ImageSource.camera),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(56),
          primary: Color.fromARGB(255, 157, 157, 157),
          onPrimary: const Color.fromARGB(255, 0, 0, 0),
          textStyle: TextStyle(fontSize: 20),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            SizedBox(width: 16),
            Text(title),
          ],
        ),
        onPressed: onClicked,
      );
}
