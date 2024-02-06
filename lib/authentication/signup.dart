// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, sort_child_properties_last, deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPet extends StatelessWidget {
  
  final _formKey = GlobalKey<FormState>();
  String _nome = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

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
      backgroundColor: Color.fromARGB(255, 195, 195, 193),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: (value) {
                 _nome = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                      return 'Por favor insira seu nome';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                onChanged: (value) {
                 _email = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                      return 'Por favor insira seu e-mail';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                onChanged: (value) {
                 _password = value;
                },
                validator: (value) {
                 if (value!.isEmpty) {
                    return 'Por favor insira sua senha';
                 }
                 return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirme Senha'),
                onChanged: (value) {
                 _confirmPassword = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                      return 'Por favor confirme sua senha';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Registrado com sucesso!', style: TextStyle(backgroundColor: Color.fromARGB(255, 0, 132, 20))),
                      ),
                    );
                  }
                },
                child: Text('Enviar', style: TextStyle(fontSize: 18)),
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
    );
  }
}