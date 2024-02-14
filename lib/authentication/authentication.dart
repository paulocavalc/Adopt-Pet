// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, prefer_const_literals_to_create_immutables

import 'package:boa_tarde/authentication/help.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {

  final String title;
  final String subtitle;
  final String mainButtonTitle;
  final Widget form;
  final bool showTermsText;
  final void Function() onMainButtonTapped;
  final void Function() onCreateAccountTapped;
  final void Function() onForgotPassword;
  final void Function() onBackPressed;
  final void Function() onSignInWithApple;
  final void Function() onSignInWithGoogle;
  final String validationMessage;
  final bool busy;

  const Authentication({
    required Key key,
    required this.title,
    required this.subtitle,
    required this.mainButtonTitle,
    required this.form,
    required this.onMainButtonTapped,
    required this.onCreateAccountTapped,
    required this.onForgotPassword,
    required this.onBackPressed,
    required this.onSignInWithApple,
    required this.onSignInWithGoogle,
    required this.validationMessage,
    this.showTermsText = false,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          if (onBackPressed == null) SizedBox(width: 50.0),
          if (onBackPressed != null) SizedBox(width: 18.0),
          if (onBackPressed != null)
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.arrow_back_ios,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: onBackPressed,
            ),
          Text(
            title,
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(width: 10.0),
          SizedBox(
            width: screenWigdthPercentage(context, percentage: 0.7),
            child: Text(
              subtitle,
              style: TextStyle(
                  color: const Color.fromARGB(255, 200, 194, 177),
                  fontSize: 16),
            ),
          ),
          SizedBox(width: 18.0),
          form,
          SizedBox(width: 18.0),
          if (onForgotPassword != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onForgotPassword,
                child: Text("Esqueceu a senha?",
                    style: TextStyle(
                            color: const Color.fromARGB(255, 57, 57, 56),
                            fontSize: 16)
                        .copyWith(
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          SizedBox(width: 18.0),
          if (validationMessage != null)
            Text(
              validationMessage,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          if (validationMessage != null) SizedBox(width: 18.0),
          GestureDetector(
            onTap: onMainButtonTapped,
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(8)),
              child: busy
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    )
                  : Text(
                      mainButtonTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
            ),
          ),
          SizedBox(width: 18.0),
          if (onCreateAccountTapped != null)
            GestureDetector(
              onTap: onCreateAccountTapped,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem uma conta?"),
                  SizedBox(width: 5.0),
                  Text("Crie uma conta",
                    style: TextStyle(
                      color: const Color.fromARGB(31, 201, 65, 65)
                    ),
                  )
                ],
              ),
            ),
            if(showTermsText)
              Text("Ao se inscrever, você concorda com nossos termos, condições e política de privacidade.",
                style: TextStyle(color: Colors.amber, fontSize: 16),
                textAlign: TextAlign.center,
              )
        ],
      ),
    );
  }
}
