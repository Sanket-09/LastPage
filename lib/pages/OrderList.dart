import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:erp/Widgets/SideBar.dart';


class order_ref extends StatefulWidget {
  const order_ref({ key}) : super(key: key);

  @override
  _order_refState createState() => _order_refState();
}

class _order_refState extends State<order_ref> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: MaterialApp(

        home: Scaffold(
          drawer: NavDrawer(),

          body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),

        Text(
        "Order List",
        style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
          SizedBox(
            height: 10,
          ),


          textItem('', '', '', '', '')
      ]
            ),
          ),


        ),
      ),
      ),
    );
  }
}

 Widget textItem(String Name ,String Order, dynamic Amount , dynamic Order_Date , dynamic Order_No)
{

  return Theme(
    data: ThemeData().copyWith(dividerColor: Colors.orange),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(title: Text(Name),
      children: [

         Text(Order),
         Text(Amount),
         Text(Order_Date),
         Text(Order_No),

         ],

      ),
    ),
  );
}

