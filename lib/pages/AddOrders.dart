import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:erp/Widgets/SideBar.dart';


class add_order extends StatefulWidget {
  const add_order({Key key}) : super(key: key);

  @override
  _add_orderState createState() => _add_orderState();
}

class _add_orderState extends State<add_order> {

  TextEditingController _addOrdercontroller = TextEditingController();
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
                            "Add Order",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,2,20,10),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addOrdercontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Customer Name',
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 2, 20, 10),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addOrdercontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Address',
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,2,20,10),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addOrdercontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,2,20,10),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addOrdercontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Mode Of Payment',
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,2,20,10),
                          child: Container(
                            height: 60,

                            width: MediaQuery.of(context).size.width ,
                            child: TextFormField(
                              controller: _addOrdercontroller,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Product',
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
