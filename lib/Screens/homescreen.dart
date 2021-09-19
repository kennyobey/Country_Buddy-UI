// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text("Hi Dara,",
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black))),
                Spacer(),
                profilePage()
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
                "Curious? Browse your favorite countries and increase your knowledge base",
                textAlign: TextAlign.justify,
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black))),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: ("search countries, continent"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent),
                    gapPadding: 10.0),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Popular Countries",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
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
            SizedBox(
              height: 20,
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
          //       GridView.count(
          // crossAxisCount: 2,
          // children: [
          //       gridContent(),
          //       gridContent(),
          //       gridContent(),
          //       gridContent(),
          // ],
          // children: List.generate(100, (index) {
          //   return Center(
          //     child: Text(
          //       'Item $index',
          //       style: Theme.of(context).textTheme.headline5,
          //     ),
          //   );
        //   // }),
        // ),
          ],
        ),
      ),
    );
  }
}

Widget scrollItem() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            height: 100,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      Text('Cake',
          style: GoogleFonts.nunito(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black)))
    ],
  );
}

Widget profilePage() {
  return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://i.imgur.com/BoN9kdC.png"))));
}

// Widget gridContent() {
//   return Container(
//       height: 100,
//       child: Card(
//         child: Image.network(
//          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//           fit: BoxFit.cover,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         elevation: 5,
//         margin: EdgeInsets.all(10),
//       ));
// }
