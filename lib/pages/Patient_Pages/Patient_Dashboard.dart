import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'Patient_Panel/Dashboard_Widgets/Dashboard_Home.dart';
import 'Patient_Panel/Dashboard_Widgets/Navigation_drawer.dart';

class PatientDashboardPage extends StatefulWidget {
  const PatientDashboardPage({Key? key}) : super(key: key);
  @override
  State<PatientDashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<PatientDashboardPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) { 
  setState(() {
    _selectedIndex = index;
  });
}
  List<Widget> _pages = <Widget>[
    PatientHomePage(),
    Text("Statistics"),
    Text("History"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: PatientNavigationDrawer(),
       bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'History',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,       
        ),
      body: Container(
      child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
