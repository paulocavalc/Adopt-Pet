// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_void_to_null, non_constant_identifier_names, unused_field, avoid_print, sort_child_properties_last, deprecated_member_use, must_be_immutable

import 'package:boa_tarde/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPet extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 195, 195, 193),
        centerTitle: true,
        title: Center(
          child: Text("Adopt Pet", 
            style: GoogleFonts.calistoga(
              color: Color.fromARGB(255, 0, 0, 0), 
              fontSize: 38
            )
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 195, 195, 193),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                 children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-mail'),
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
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Senha'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, digite sua senha';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      obscureText: true,
                    ),
                    SizedBox(height: 12),
                    TextButton(
                      onPressed: () {},
                      child: Text('Esqueceu sua senha?', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 24),
                    
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          try {
                            // Login logic here
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      child: Text('Login', style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPet()));
                      },
                      child: Text('Registre-se', style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}