import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:erp/Widgets/SideBar.dart';

class my_profile extends StatefulWidget {
  const my_profile({Key key}) : super(key: key);

  @override
  _my_profileState createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('           My Profile',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),),
        ),
        body: SingleChildScrollView(
          child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Center(
                 child: CircleAvatar(
                   radius: 80,
                   backgroundImage: AssetImage('Assets/buffer.jpg'),
                   backgroundColor: Colors.transparent,
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                 width: MediaQuery.of(context).size.width-50 ,
                 height: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.grey,
                     width: 1,

                   ),
                   borderRadius: BorderRadius.circular(12),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('Green Leaf Store',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                 width: MediaQuery.of(context).size.width-50 ,
                 height: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.grey,
                     width: 1,

                   ),
                   borderRadius: BorderRadius.circular(12),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('Sanket Jaiswal',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                 width: MediaQuery.of(context).size.width-50 ,
                 height: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.grey,
                     width: 1,

                   ),
                   borderRadius: BorderRadius.circular(12),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('+91 8936498324',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                 width: MediaQuery.of(context).size.width-50 ,
                 height: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.grey,
                     width: 1,

                   ),
                   borderRadius: BorderRadius.circular(12),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('greenleaves@gmail.com',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                 ),

               ),
             ),

             //Image.asset('Assets/buffer.jpg')
           ],
          ),

        ) ,
      ),
    );
  }
}
