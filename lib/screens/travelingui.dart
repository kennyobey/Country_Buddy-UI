// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTravelUi extends StatelessWidget {
  MyTravelUi({Key? key}) : super(key: key);

  final List<PhotoItem> _items = [
    PhotoItem("assets/Mainland.jpg", "Third Midland Bridge", "Location - Lagos, Nigeria 🇳🇬"),
    PhotoItem("assets/Niagrafall.jpg", "Niagra Falls", "Location - Niagra Falls, Canada 🇨🇦"),
    PhotoItem("assets/Greatwall.jpg", "The Great Wall", "Location - Huairou District, China 🇨🇳"),
    PhotoItem("assets/Imperial.jpg", "Imperial Palace", "Location - Tokyo, Japan 🇯🇵"),
    PhotoItem("assets/Transorp.jpg", "Transorp Hilton", "Location - Abuja, Nigeria 🇳🇬"),
    PhotoItem("assets/London.jpg", "London Bridge", "Location - London, UK 🏴󠁧󠁢󠁥󠁮󠁧󠁿󠁧󠁢󠁥󠁮󠁧󠁿"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(left: 0, right: 0),
          sliver: SliverAppBar(
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
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Travel Destinations",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color.fromRGBO(98, 88, 72, 10)))),
                  ],
                ),
                Text(
                    "We compile places we think you would like to visit based on your search result",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 1.0,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
              return Container(
                //padding: EdgeInsets.all(8),
                height: 300,
                width: 183,
                child: Card(
                    child: Column(children: [
                  // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                  Container(
                    height: 125,
                    width: 143,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          _items[index].image,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                _items[index].title,
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(98, 88, 72, 10))),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                _items[index].desc,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 9,color: Color.fromRGBO(98, 88, 72, 10))),
                              ),
                            ],
                          )
                        ],
                      ))
                ])),
              );
            }),
          ),
        ),
      ],
    ));
  }
}

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

class PhotoItem {
  late String image;
  late String title;
  late String desc;

  PhotoItem(this.image, this.title, this.desc);
}
