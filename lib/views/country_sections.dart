// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:country_buddy/countries_list/models/countries_list_model.dart';
import 'package:country_buddy/countries_list/view_model/country_view_model.dart';
import 'package:country_buddy/views/country_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCountrySec extends StatefulWidget {
  const MyCountrySec({Key? key, required this.continent}) : super(key: key);
  final String continent;

  @override
  State<MyCountrySec> createState() => _MyCountrySecState();
}

class _MyCountrySecState extends State<MyCountrySec> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read<CountryViewModel>().getCountries(widget.continent);
    });
  }

  @override
  Widget build(BuildContext context) {
    CountryViewModel countryViewModel = context.watch<CountryViewModel>();
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
                  Row(
                    children: [
                      Text("${widget.continent} Countries",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color.fromRGBO(98, 88, 72, 10)))),
                      SizedBox(width: 5),
                      Image(
                          image: AssetImage(
                        "assets/worldicon.png",
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 270,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ("search countries in africa"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                                gapPadding: 5.0),
                            contentPadding: EdgeInsets.all(8),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(Icons.search),
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage(
                          "assets/searchicon.png",
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("Sort: Alphabetical Order",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(98, 88, 72, 10)))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          countryViewModel.loading
              ? SliverToBoxAdapter(
                  child: SizedBox(
                      height: 500,
                      child: Center(child: CircularProgressIndicator())))
              : SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return CountryCard(
                          countryViewModel.countryListmodel.elementAt(index),
                        );
                      },
                      childCount: countryViewModel.countryListmodel.length,
                    ),
                  ),
                ),
        ],
      ),
    );
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

class CountryCard extends StatelessWidget {
  final CountryBuddy countryBuddy;
  const CountryCard(this.countryBuddy, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyCountryInfo()),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 70,
                  maxHeight: 70,
                ),
                child: Text(
                  countryBuddy.flag ?? '',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              title: Text(
                countryBuddy.name!.common ?? '',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color.fromRGBO(98, 88, 72, 10),
                  ),
                ),
              ),
              subtitle: Text(
                countryBuddy.capital.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: Color.fromRGBO(98, 88, 72, 10))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
