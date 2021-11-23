
import 'package:erp/pages/AddOrders.dart';
import 'package:erp/pages/AddProducts.dart';
import 'package:erp/pages/Completed%20Orders.dart';
import 'package:erp/pages/HomePage.dart';
import 'package:erp/pages/MyProfile.dart';
import 'package:erp/pages/OrderList.dart';
import 'package:erp/pages/signinn.dart';
import 'package:erp/pages/signupp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:erp/Service/Auth_Service.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/home',

      routes: {
        '/': (context) => signinn(),
        '/signup': (context) => signupp(),
        '/home': (context) => HomePage(),
        '/OrderList': (context) => order_ref(),
        '/Add_Products': (context) => add_products(),
        '/Add_Order': (context) => add_order(),
        '/Completed_Orders': (context) => comp_order(),
        '/My_Profile': (context) => my_profile(),

      }
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthClass authClass = AuthClass();
  Widget currentPage = HomePage();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: order_ref(),
    );
  }
}

