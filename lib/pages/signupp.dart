import 'dart:ui';
import 'package:erp/Service/Auth_Service.dart';
import 'package:erp/pages/HomePage.dart';
import 'package:erp/pages/signinn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/widgets.dart';

class signupp extends StatefulWidget {
  const signupp({Key key}) : super(key: key);

  @override
  _signuppState createState() => _signuppState();
}

class _signuppState extends State<signupp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool circular = false ;
  AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonItem('Assets/google.png',"Continue with Google", 25, ()async {
                  await authClass.googleSignIn(context);
                } ),
                SizedBox(
                  height: 15,
                ),
                buttonItem('Assets/phone.png',"Continue with Mobile", 30, (){}),
                SizedBox(
                  height: 15,
                ),

                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 70.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 60,
                        )),
                  ),
                  Text("Or",style: TextStyle(
                    color: Colors.black,

                    fontSize: 17,

                  ),),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 70.0),
                        child: Divider(
                          color: Colors.black,
                          height:60,
                        )),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                textItem("Email",_emailController , false),
                SizedBox(
                  height: 15,
                ),

                textItem("Password",_pwdController, true),
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

                    Text("Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),

                    InkWell(
                      onTap: ()
                      {

                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (builder)=>signinn()),
                                (route) => false);


                      },
                      child: Text("   Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buttonItem(
    String imagepath, String buttonName, double size, Function onTap
  )
  {
    return InkWell(
      onTap: ()
      {

      },
      child: Container(
        width: MediaQuery.of(context).size.width -60,
        height: 60,
        child: Card(
          elevation: 50,
          color: Colors.blue[700],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: Colors.black,

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
      ),
    );
  }
  Widget colorButton()
  {
   return InkWell(
      onTap: () async
     {
       setState(() {
         circular = true;
       });
       try {
         firebase_auth.UserCredential userCredential =
         await firebaseAuth.createUserWithEmailAndPassword
           (email: _emailController.text, password: _pwdController.text);
         print(userCredential.user.email);
         setState(() {
           circular = false;
         });
         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>HomePage()),
                 (route) => false);
       }
       catch(e)
       {
         final snackbar = SnackBar(content: Text(e.toString()));
         ScaffoldMessenger.of(context).showSnackBar(snackbar);
         setState(() {
           circular = false;
         });
       }

     },
     child: Container(
       height: 60,
       width: MediaQuery.of(context).size.width -100,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(25),
           gradient: LinearGradient(
             colors: [Colors.blue[700], Colors.blue[700]],
             begin: FractionalOffset(0.0, 0.0),
             end: FractionalOffset(0.3, 0.0),
             stops: [0.0, 1.0],)
       ),
       child: Center(
         child:circular?CircularProgressIndicator(): Text("Signup",style: TextStyle(
           fontSize: 20,
           color: Colors.white,
         ),),
       ),

     ),
   );




  }

  Widget textItem(String labelText , TextEditingController controller , bool obscureText)
  {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width - 70,
    child: TextFormField(
      controller: controller,
    obscureText: obscureText,
    style: TextStyle(
      color: Colors.black,
      fontSize: 17,
    ),
    decoration: InputDecoration(
    labelText: labelText , labelStyle: TextStyle(fontSize: 17,
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
    color: Colors.black,

    ),
    ),
    ),
    ),
    );
  }
}
