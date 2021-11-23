import 'package:erp/Widgets/SideBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(


        title: Text('          Last Page',
        style: TextStyle(
          fontSize: 27,
          color: Colors.black,
        ),),
        backgroundColor: Colors.white,
        toolbarHeight: 70,
      ),

      body: SafeArea(

          child: Column(

        children: [
          Positioned(bottom: 0, left: 0, child: Container(

          )),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Center(child: buttonItem(160,80, 'Assets/buffer.jpg', '', 250, () {})),

            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              buttonItem(135, 235, 'Assets/buffer.jpg', '', 250, () {}),
              SizedBox(
                width: 15,
              ),
              buttonItem(135, 235, 'Assets/buffer.jpg', '', 250, () {}),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              buttonItem(135, 235, 'Assets/buffer.jpg', '', 250, () {}),
              SizedBox(
                width: 15,
              ),
              buttonItem(135, 235, 'Assets/buffer.jpg', '', 250, () {}),
            ],
          ),
          SizedBox(
            height: 40,
          ),

        ],
      )),
    );
  }





  Widget buttonItem(double height1, double width1, String imagepath,
      String buttonName, double size, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width - width1,
          height: height1,
          child: Card(
            elevation: 50,
            color: Colors.grey[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  width: 1,
                  color: Colors.grey,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  imagepath,
                  height: size,
                  width: size,
                  fit: BoxFit.fitWidth,
                )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  buttonName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
