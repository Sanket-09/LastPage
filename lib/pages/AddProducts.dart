import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:erp/Widgets/SideBar.dart';


class add_products extends StatefulWidget {
  const add_products({Key key}) : super(key: key);

  @override
  _add_productsState createState() => _add_productsState();
}

class _add_productsState extends State<add_products> {

  TextEditingController _addProductcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: MaterialApp(

        home: Scaffold(
          drawer: NavDrawer(),

          body: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [


                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Add Products",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addProductcontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Add Products',
                                labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.amber,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        FloatingActionButton(

                            child: Icon(Icons.add),
                          backgroundColor: Colors.green,
                          onPressed: () {
                            setState(() {
                                            });
                          },
                        ),






              ],
            ),

    ),
    ]

      ),
    ),
    ),
      ),
          );



  }
  
}








