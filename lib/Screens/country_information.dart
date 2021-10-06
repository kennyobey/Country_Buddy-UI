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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 400,
                    child: Image.asset("assets/AngolaRiver.jpg"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("About Angola",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "Angola, country located in southwestern Africa. A large country,gola takes in a broad variety of landscapes, including thesemidesert Atlantic littoral bordering Namibia’s “Skeleton Coast.With a Population of 31,067,000 people, Angola is fast growing.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
                SizedBox(
                  height: 32,
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
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      scrollItem1("assets/luanada.jpg", "Luanda"),
                      scrollItem1("assets/waterfall.jpg", "Dala Waterfalls"),
                      scrollItem1("assets/kisama.jpg", "Kissama"),
                      scrollItem1("assets/forest.jpg", "Maiombe Forest"),
                      scrollItem1("assets/Angola.jpg", "Maiombe Forest"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text("Culture",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "The mixture of Portuguese and African culture has made urban Angola, especially the Luanda region, more like a Latin American than an African country. ",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
                SizedBox(
                  height: 32,
                ),
                Text("Famous People",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(98, 88, 72, 10)))),
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      scrollItem1("assets/Angeli.jpg", "Angélique Kidjo"),
                      scrollItem1("assets/sagbo.jpg", "Jean Sagbo"),
                      scrollItem1("assets/bocco.jpg", "J.M.A Bocco"),
                      scrollItem1("assets/saint.jpg", "Saint Jhn"),
                      scrollItem1("assets/saint.jpg", "Maiombe Forest"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
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
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            images,
            height: 72,
            width: 84,
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
