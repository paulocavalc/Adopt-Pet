// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Sign Up',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: SignUp(),
      );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String _cpf = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  String _phone = '';

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'CPF'),
                onChanged: (value) {
                 _cpf = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                      return 'Por favor insira seu CPF';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
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
                decoration: InputDecoration(labelText: 'Password'),
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
                decoration: InputDecoration(labelText: 'Confirm Password'),
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
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                onChanged: (value) {
                 _phone = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                      return 'Por favor, digite seu número de telefone';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Registrado com sucesso!'),
                      ),
                    );
                  }
                },
                child: Text('Registre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}