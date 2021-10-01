// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCountryInfo extends StatelessWidget {
  MyCountryInfo({Key? key}) : super(key: key);

  final List<PhotoItem> _items = [
    PhotoItem("assets/Angola.jpg", "Angola",
        "Angola is a Southern African nation whose varied ."),
    PhotoItem("assets/Benin.jpg", "Benin Republic",
        "Angola is a Southern African nation whose varied ."),
    PhotoItem("assets/CentralAfri.jpg", "Central African Republic",
        "Angola is a Southern African nation whose varied ."),
    PhotoItem("assets/Drcongo.jpg", "DR Congo",
        "Angola is a Southern African nation whose varied ."),
    PhotoItem("assets/Ethopia.jpg", "Ethopia",
        "Angola is a Southern African nation whose varied ."),
    PhotoItem("assets/Gambia.jpg", "Gambia",
        "Angola is a Southern African nation whose varied .󠁧󠁢󠁥󠁮󠁧󠁿"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          sliver: SliverAppBar(
            elevation: 0,
            pinned: true,
            title: Text("",
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
                Container(
                  height: 400,
                  child: Image.asset("assets/AngolaRiver.jpg"),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("About Angola",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(98, 88, 72, 10)))),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                          "Angola, country located in southwestern Africa. ",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(98, 88, 72, 10)))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Tourist Attractions",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(98, 88, 72, 10)))),
                  ],
                ),
                Row(
                  children: [
                    scrollItem1("assets/abuja.png", "abuja"),
                    scrollItem1("assets/Angola.jpg", "angola"),
                   
                  ],
                ),
              ],
            ),
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

Widget scrollItem1(String images, String name) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            images,
            height: 90,
            width: 90,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        children: [
          Text(name,
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
