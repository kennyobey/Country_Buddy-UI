// ignore_for_file: must_be_immutable, unused_label, unnecessary_const, prefer_const_constructors

import 'package:country_buddy/Screens/homescreen.dart';
import 'package:country_buddy/Screens/search.dart';
import 'package:country_buddy/Screens/travelingui.dart';
import 'package:flutter/material.dart';

class MyNavPage extends StatelessWidget {
  MyNavPage({Key? key}) : super(key: key);

  late int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    MyHomePage(),
    MySearchPage(),
    MyTravelUi()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.house), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_notifications_sharp), label: 'home'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
