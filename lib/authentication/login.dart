// ignore_for_file: prefer_const_constructors

import 'package:boa_tarde/authentication/signup.dart';
import 'package:boa_tarde/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final loading = ValueNotifier<bool>(false);

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => MyApp()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/pet.jpg",
                    width: 300,
                  ),

                  SizedBox(height: 20),

                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(239, 239, 239, 1)
                    ),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "E-mail",
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(239, 239, 239, 1)
                    ),
                    child: TextFormField(
                      controller: password,
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Senha",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                  ),

                  SizedBox(height: 10),
                  
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.green[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedBuilder(
                        animation: loading,
                        builder: (context, _) {
                          return loading.value 
                              ? SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: CircularProgressIndicator(color: Colors.white,),
                              )
                              : const Text(
                                "ENTRAR",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 17
                                ),
                              );
                        }
                      ),
                      onPressed: () => loading.value = !loading.value,
                    ),
                  ),
                  
                  SizedBox(height: 10),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem uma conta?",
                      style: TextStyle(
                        color: Colors.white
                      )),
                      
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text("Cadastre-se", style: TextStyle(color: Color.fromARGB(255, 5, 69, 247))))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}