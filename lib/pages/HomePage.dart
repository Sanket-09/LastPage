import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
      bottomNavigationBar: Row(
        children: [
          NavBarContainer(Icons.home,0,false),
          NavBarContainer(Icons.message_rounded,1,false),
          NavBarContainer(Icons.people,2,false),
          NavBarContainer(Icons.person,2,false)



        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 0,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Positioned(bottom: 0, left: 0, child: Container(

          )),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
              SizedBox(
                width: 15,
              ),
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
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
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
              SizedBox(
                width: 15,
              ),
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
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
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
              SizedBox(
                width: 15,
              ),
              buttonItem(120, 215, 'Assets/buffer.jpg', '', 250, () {}),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          buttonItem(80, 100, 'Assets/buffer.jpg', '', 250, () {}),
        ],
      )),
    );
  }

  Widget NavBarContainer(IconData icon,int index,bool isActive){
    return InkWell(
      onFocusChange: (hasfocus)
      {
        if (hasfocus) {
          isActive = true;
        }},
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(

            color: isActive?Colors.teal: Colors.grey[500],
        ),
        child: Icon(icon),
      ),
    );

  }



  Widget buttonItem(double height1, double width1, String imagepath,
      String buttonName, double size, Function onTap) {
    return InkWell(
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
    );
  }
}
