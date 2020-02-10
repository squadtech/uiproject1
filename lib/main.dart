import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uiproject/dashboard_design.dart';


import 'Activity.dart';
import 'People.dart';
import 'calender_tile.dart';


void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: Scaffold(

      body:DashboardScreen()
      ),
    );
  }
}
