// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_field, must_be_immutable, unused_element, unnecessary_const, prefer_final_fields

import 'package:country_buddy/Screens/search.dart';
import 'package:country_buddy/Screens/travelingui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
    const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
           
          SliverPadding(
            padding: EdgeInsets.only(left: 0, right: 0),
            sliver: SliverAppBar(
              elevation: 0,
              pinned: true,
              floating: true,
              title: Text("Hi Dara,",
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color.fromRGBO(98, 88, 72, 10)))),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 15, right: 15),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    //_pages.elementAt(_selectedIndex),
                    Text(
                        "Curious? Browse your favorite countries and increase your knowledge base",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(98, 88, 72, 10)))),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: ("search countries, continent"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1),
                            gapPadding: 5.0),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Countries",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color.fromRGBO(98, 88, 72, 10))),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                            scrollItem(),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Text(
                        "Continents",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(98, 88, 72, 10))),
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                return Container(
                  //padding: EdgeInsets.all(8),
                  height: 222,
                  width: 183,
                  child: Card(
                      child: Column(children: [
                    // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network("https://robohash.org/$index"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            Text(
                              "Africa",
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color.fromRGBO(98, 88, 72, 10))),
                            ),
                            Text(
                              "Africa is the second largest continent in the world",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(98, 88, 72, 10))),
                            ),
                          ],
                        ))
                  ])),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

void setState(Null Function() param0) {}

Widget profilePage() {
  return Container(
      width: 25.0,
      height: 25.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://i.imgur.com/BoN9kdC.png"))));
}

Widget scrollItem() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
            height: 90,
            width: 90,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        children: [
          Text('Nigeria',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(98, 88, 72, 10)))),
        ],
      )
    ],
  );
}
