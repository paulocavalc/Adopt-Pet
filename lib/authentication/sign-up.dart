// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_void_to_null, non_constant_identifier_names, unused_field, avoid_print, sort_child_properties_last, deprecated_member_use, must_be_immutable, sized_box_for_whitespace, prefer_final_fields, prefer_typing_uninitialized_variables, valid_regexps, unnecessary_null_comparison, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpPetState();
}

class SignUpPetState extends State<SignUpPet> {
  final _formKey = GlobalKey<FormState>();
  final nameText = TextEditingController();
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  final confirmePasswordText = TextEditingController();

  String _nome = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  var _isObscureText;
  var _isObscureTextX;

  @override
  void initState() {
    super.initState();
    _isObscureText = true;
    _isObscureTextX = true;
  }

  Widget buildLoginButton() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
          } else {}
        },
        child: Text("INSCREVA-SE",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 55),
          primary: Color.fromARGB(255, 223, 204, 152),
          onPrimary: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
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
        body: Form(
          key: _formKey,
          child: Center(
            child: Container(
              width: 400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: nameText,
                      validator: (value) {
                        if (value == '') {
                          return 'Digite seu nome completo';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        hintText: "Nome Completo",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 157, 157, 157)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    Container(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailText,
                      validator: (value) {
                        if (value == '') {
                          return 'Digite seu e-mail';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 157, 157, 157)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    Container(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordText,
                      obscureText: _isObscureText,
                      validator: (value) {
                        if (value == '') {
                          return 'Digite sua senha';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 223, 204, 152),
                          padding: EdgeInsetsDirectional.only(end: 20),
                          icon: _isObscureText
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscureText = !_isObscureText;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        hintText: "Senha",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 157, 157, 157)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    Container(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: confirmePasswordText,
                      obscureText: _isObscureTextX,
                      validator: (value) {
                        if (value == '') {
                          return 'Digite sua senha confirme';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 223, 204, 152),
                          padding: EdgeInsetsDirectional.only(end: 20),
                          icon: _isObscureTextX
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscureTextX = !_isObscureTextX;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        hintText: "Confirme Senha",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 157, 157, 157)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _confirmPassword = value!;
                      },
                    ),
                    SizedBox(height: 30),
                    buildLoginButton(),
                  ]),
            ),
          ),
        )
      );
  }
}