import 'package:farmlever_test/components/category_card.dart';
import 'package:farmlever_test/components/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(color: Colors.green
                //image: DecorationImage(
                //alignment: Alignment.centerLeft,
                //image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                ),
          ),
          SearchBar(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                CategoryCard(
                  title: "Plots",
                  //svgSrc: "assets/icons/.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Crops",
                  //svgSrc: "assets/icons/.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Weather",
                  //svgSrc: "assets/icons/.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Activities",
                  //svgSrc: "assets/icons/.svg",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
