import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.red[100],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                child: Image.asset('Images/index1.png'),
                height: 150,
                width: 150,
              ),
              Text('ERP Login',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              Text(
                'BITS Pilani',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: TextField(
                    obscureText: false,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter E-mail Id',
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                },
                textColor: Colors.white,
                child: Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
