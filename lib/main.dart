// ignore_for_file: prefer_const_constructors

import 'package:country_buddy/countries_list/view_model/country_view_model.dart';
import 'package:country_buddy/views/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountryViewModel())
        ],
        child: ScreenUtilInit(
            designSize: Size(360, 690),
            builder: () => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                      primarySwatch: Colors.grey,
                      appBarTheme: AppBarTheme(color: Colors.white)),
                  home: MyNavPage(),
                )));
  }
}


//quicktype
//postman