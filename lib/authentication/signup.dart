// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CreateApp extends StatelessWidget {
  final loading = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 235, 230, 230),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 3),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          color: Color.fromARGB(255, 235, 230, 230),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("ADOPT PET", style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[900]
                  ),),
                  SizedBox(height: 5,),
                ],
              ),
              TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                hintText: "Usuário",
                prefixIcon: Icon(Icons.perm_identity),
                //prefixIcon: IconButton(
                //  onPressed: () {},
                //  icon: Image.asset(
                //    "assets/password.png", 
                //    width: 30, 
                //    color: Color.fromARGB(255, 111, 111, 111),
                //  ),
                //),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email),
                //prefixIcon: IconButton(
                //  onPressed: () {},
                //  icon: Image.asset(
                //    "assets/password.png", 
                //    width: 30, 
                //    color: Color.fromARGB(255, 111, 111, 111),
                //  ),
                //),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                filled: true,
                hintText: "Senha",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                //prefixIcon: IconButton(
                //  onPressed: () {},
                //  icon: Image.asset(
                //    "assets/password.png", 
                //    width: 30, 
                //    color: Color.fromARGB(255, 111, 111, 111),
                //  ),
                //),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                filled: true,
                hintText: "Confirmar Senha",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                //prefixIcon: IconButton(
                //  onPressed: () {},
                //  icon: Image.asset(
                //    "assets/password.png", 
                //    width: 30, 
                //    color: Color.fromARGB(255, 111, 111, 111),
                //  ),
                //),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
              //Column(
              //  children: <Widget>[
              //    makeInput(label: "Nome"),
              //    makeInput(label: "E-mail"),
              //    makeInput(label: "Senha", obscureText: true),
              //    makeInput(label: "Confirmar Senha", obscureText: true),
              //  ], 
              //),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60), 
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.blue[900],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: AnimatedBuilder(
                        animation: loading,
                        builder: (context, _) {
                          return loading.value
                              ? const SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: CircularProgressIndicator(color: Colors.white,),
                                )
                              : const Text(
                                "CADASTRE-SE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              );
                        }),
                      onPressed: () => loading.value = !loading.value,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Já tem uma conta?", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black
                  ),),
                  Text(" Login", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.green[800]
                  ),),
                  SizedBox(height: 25,),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
  // Nao tem Text fiel nada
  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600]
          ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        //SizedBox(height: 15,),
      ],
    );
  }
}
