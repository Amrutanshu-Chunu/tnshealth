import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tnshealth/screen/Login_Page.dart';
import 'package:tnshealth/allopathy/allopathy.dart';
import 'package:tnshealth/ayurvedic/ayurvedic.dart';
import 'package:tnshealth/homeopathy/homeopathy.dart';

import 'package:tnshealth/tabbar/consult.dart';
import 'package:tnshealth/tabbar/diagnosys.dart';
import 'package:tnshealth/tabbar/medicine.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final kTextStyle = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  final kTabBar = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Row(
                  children: const <Widget>[
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Home'),
          // ignore: prefer_const_constructors
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Consult',
                  style: kTabBar,
                ),
              ),
              Tab(
                child: Text(
                  'Diagnosys',
                  style: kTabBar,
                ),
              ),
              Tab(
                child: Text(
                  'Medicine',
                  style: kTabBar,
                ),
              ),
            ],
          ),
        ),

        body: TabBarView(
            children: [const Consult(), diagnosys(), const medicine()]),
      ),
    );
  }
}
