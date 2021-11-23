import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'LastPage',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.cyan[800],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('HomePage'),
            onTap: () => {Navigator.pushNamed(context, '/home')},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('My Profile'),
            onTap: () => {Navigator.pushNamed(context, '/My_Profile')},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('OrderList'),
            onTap: () => {Navigator.pushNamed(context, '/OrderList')},
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add_Products'),
            onTap: () => {Navigator.pushNamed(context, '/Add_Products')},
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add_Order'),
            onTap: () => {Navigator.pushNamed(context, '/Add_Order')},
          ),
          ListTile(
            leading: Icon(Icons.done),
            title: Text('Completed_Orders'),
            onTap: () => {Navigator.pushNamed(context, '/Completed_Orders')},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}