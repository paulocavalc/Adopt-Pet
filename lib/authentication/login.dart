// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_void_to_null, non_constant_identifier_names, unused_field, avoid_print, sort_child_properties_last, deprecated_member_use, must_be_immutable, sized_box_for_whitespace

import 'package:boa_tarde/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPet extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

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
      body: Center(
        child: Container(
          width: 300,
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailText,
              decoration: InputDecoration(
                hintText: "E-mail",
                hintStyle: TextStyle(color: const Color.fromARGB(255, 157, 157, 157)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 223, 204, 152), width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, digite seu e-mail';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            Container(height: 20),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passwordText,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Senha",
                hintStyle: TextStyle(color: const Color.fromARGB(255, 157, 157, 157)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 223, 204, 152), width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, digite seu e-mail';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: Text('Esqueceu sua senha?',
                  style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
            ),
            SizedBox(height: 24),
            ElevatedButton(onPressed: () async {
              if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  try {
                    // Login logic here
                  } catch (e) {
                    print(e);
                  }
              }
            }, 
            child: Text("Login", style: TextStyle(fontSize: 18)),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                onPrimary: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPet()));
              },
              child: Text('Registre-se', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                onPrimary: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ]),
        ),
      )
    );
  }
}
