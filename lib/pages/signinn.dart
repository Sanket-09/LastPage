import 'dart:ui';
import 'package:erp/pages/signupp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import 'HomePage.dart';

class signinn extends StatefulWidget {
  const signinn({Key key}) : super(key: key);

  @override
  _signinnState createState() => _signinnState();
}

class _signinnState extends State<signinn> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool circular = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonItem('Assets/google.png', "Continue with Google", 25),
                SizedBox(
                  height: 15,
                ),
                buttonItem('Assets/phone.png', "Continue with Mobile", 30),
                SizedBox(
                  height: 15,
                ),
                Text("OR", style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
                SizedBox(
                  height: 15,
                ),
                textItem("Email...",_emailController , false),
                SizedBox(
                  height: 15,
                ),


                textItem("Password...",_pwdController, true),
                SizedBox(
                  height: 15,
                ),
                colorButton(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    InkWell( onTap:()
                      {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (builder)=>signupp()),
                                (route) => false);
                      },
                      child: Text("   SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonItem(String imagepath, String buttonName, double size) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width - 60,
      height: 60,
      child: Card(
        elevation: 8,
        color: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              width: 1,
              color: Colors.grey,

            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagepath, height: size, width: size),
            SizedBox(
              width: 15,
            ),
            Text(buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,

              ),),
          ],
        ),
      ),
    );
  }

  Widget colorButton() {
    return InkWell(
      onTap: ()async
      {
        try {
          firebase_auth.UserCredential userCredential = await
          firebaseAuth.signInWithEmailAndPassword(email: _emailController.text, password: _pwdController.text);
          print(userCredential.user.email);
          setState(() {
            circular = false;
          });
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>HomePage()),
                  (route) => false);
        }
        catch(e) {
          final snackbar = SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
          setState(() {
            circular = false;
          });
        }

      },
      child: Container(
        height: 60,
        width: MediaQuery
            .of(context)
            .size
            .width - 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Color(0xfffd746c), Color(0xffff9068), Color(0xfffd746c)])
        ),
        child: Center(
          child:circular?CircularProgressIndicator(): Text("SignIn", style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),
        ),

      ),
    );
  }


    Widget textItem(String labelText, TextEditingController controller,
        bool obscureText) {
      return Container(
        height: 55,
        width: MediaQuery
            .of(context)
            .size
            .width - 70,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          decoration: InputDecoration(
            labelText: labelText, labelStyle: TextStyle(fontSize: 17,
              color: Colors.white),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.amber,
                )
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey,

              ),
            ),
          ),
        ),
      );
    }
  }
