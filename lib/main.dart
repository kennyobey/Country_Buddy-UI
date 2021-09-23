// ignore_for_file: prefer_const_constructors

import 'package:country_buddy/Screens/homescreen.dart';
import 'package:country_buddy/Screens/travelingui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  MyTravelUi(),
    );
  }
}


