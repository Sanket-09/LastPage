import 'package:erp/Widgets/SideBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class comp_order extends StatefulWidget {
  const comp_order({Key key}) : super(key: key);

  @override
  _comp_orderState createState() => _comp_orderState();
}

class _comp_orderState extends State<comp_order> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text('Completed Orders',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),),
          ),
        ),
      ),
    );
  }
}
