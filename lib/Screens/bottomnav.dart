// ignore_for_file: must_be_immutable, unused_label, unnecessary_const, prefer_const_constructors

import 'package:country_buddy/Screens/homescreen.dart';
import 'package:country_buddy/Screens/search.dart';
import 'package:country_buddy/Screens/travelingui.dart';
import 'package:flutter/material.dart';

class MyNavPage extends StatefulWidget {
  const MyNavPage({Key? key}) : super(key: key);

  @override
  _MyNavPageState createState() => _MyNavPageState();
}

class _MyNavPageState extends State<MyNavPage> {
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
          selectedIconTheme:
              IconThemeData(color: Color.fromRGBO(98, 88, 72, 10), size: 40),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  NetworkImage('assets/BottomHome.jpg'),
                ),
                title: Text(''),
              ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/worldicon.png"),
              ),
              title: Text(""),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
