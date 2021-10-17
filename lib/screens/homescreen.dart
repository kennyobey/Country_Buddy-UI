// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_field, must_be_immutable, unused_element, unnecessary_const, prefer_final_fields, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:country_buddy/models/africa_models.dart';
import 'package:country_buddy/screens/country_sections.dart';
import 'package:country_buddy/servive/contry_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CountriesService countriesService = CountriesService();

  @override
  void initState() {
    super.initState();
    countriesService.getCountries();
  }

  final List<PhotoItem> _items = [
    PhotoItem("assets/Africa.jpg", "Africa",
        "Africa is the world's second-largest and second-most populous continent."),
    PhotoItem("assets/Europe.jpg", "Europe",
        "Africa is the world's second-largest and second-most populous continent."),
    PhotoItem("assets/Asia.jpg", "Asia",
        "Africa is the world's second-largest and second-most populous continent."),
    PhotoItem("assets/NorthAme.jpg", "North America",
        "Africa is the world's second-largest and second-most populous continent."),
    PhotoItem("assets/Asia.jpg", "South America",
        "Africa is the world's second-largest and second-most populous continent."),
    PhotoItem("assets/Australia.jpg", "Australia",
        "Africa is the world's second-largest and second-most populous continent."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(primary: false, slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          sliver: SliverAppBar(
            elevation: 0,
            pinned: true,
            floating: true,
            title: Text("Hi Dera,",
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(98, 88, 72, 10)))),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  Text(
                      "Curious? Browse your favorite countries and increase your knowledge base",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromRGBO(98, 88, 72, 10)))),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ("Search countries, continent"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.sp),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1),
                            gapPadding: 5.0.sp),
                        contentPadding: EdgeInsets.all(8.sp),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
                          color: Colors.blue,
                        ),
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
                          scrollItem1('assets/abuja.png', "Abuja"),
                          scrollItem1('assets/usflag.png', "US"),
                          scrollItem1('assets/palmtree.png', "Thailand"),
                          scrollItem1('assets/ukflag.png', "UK"),
                        ],
                      )),
                  SizedBox(
                    height: 20.sp,
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
                  ]),
                  SizedBox(
                    height: 10.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.sp),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10.0.sp,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return Container(
                //padding: EdgeInsets.all(8),
                height: 300,
                width: 183,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCountrySec()),
                    );
                  },
                  child: InkWell(
                    child: Card(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.sp, vertical: 8.sp),
                            height: 100,
                            width: 146,
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
                            height: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  _items[index].title,
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(98, 88, 72, 10))),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  _items[index].desc,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 9,
                                          color:
                                              Color.fromRGBO(98, 88, 72, 10))),
                                ),
                              )
                            ],
                          )
                        ])),
                  ),
                ),
              );
            }),
          ),
        ),
      ]),
    );
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
}

class PhotoItem {
  late String image;
  late String title;
  late String desc;

  PhotoItem(this.image, this.title, this.desc);
}
