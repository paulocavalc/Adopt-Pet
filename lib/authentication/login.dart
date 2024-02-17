// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_void_to_null, non_constant_identifier_names, unused_field, avoid_print, sort_child_properties_last, deprecated_member_use, must_be_immutable, sized_box_for_whitespace, prefer_final_fields, prefer_typing_uninitialized_variables, valid_regexps, unnecessary_null_comparison

import 'package:boa_tarde/authentication/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPetState();
}

class LoginPetState extends State<LoginPet> {
  final _formKey = GlobalKey<FormState>();
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  String _email = '';
  String _password = '';

  var _isObscureText;

  @override
  void initState() {
    super.initState();
    _isObscureText = true;
  }

  Widget buildForgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () => print("Esqueceu a senha pressionada"),
          child: Text(
            "Esqueceu a senha?",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
          )),
    );
  }

  Widget buildLoginButton() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
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
        child: Text("LOGIN",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
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
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'Digite um endereço de e-mail válido';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)),
                      keyboardType: TextInputType.emailAddress,
                      controller: emailText,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 157, 157, 157)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    Container(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'Digite uma senha válida';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: const Color.fromARGB(255, 157, 157, 157)),
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordText,
                      obscureText: _isObscureText,
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
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 223, 204, 152),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
                        ),
                      ),
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    SizedBox(height: 12),
                    buildForgotPassword(),
                    SizedBox(height: 24),
                    buildLoginButton(),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Já tem uma conta?",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 223, 204, 152),
                              fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPet()));
                            },
                            child: Text(
                              "Inscreva-se",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 36, 78, 246),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        )
      );
  }
}
