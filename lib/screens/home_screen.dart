import 'package:flutter/material.dart';
import 'package:gameshop_ui/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var customHeight;
  var customWidth;

  var selectedPage;

  @override
  void initState() {
    super.initState();
    selectedPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    customHeight = MediaQuery.of(context).size.height;
    customWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          featuresSection(),
          gredianSection(),
          layerWidget(),
        ],
      ),
    );
  }

  Widget featuresSection() {
    return SizedBox(
      height: customHeight * 0.50,
      width: customWidth,
      child: PageView(
        onPageChanged: (value) {
          setState(() {
            selectedPage = value;
          });
        },
        scrollDirection: Axis.horizontal,
        children: featuredGames.map((e) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              image: NetworkImage(e.coverImage.url),
            )),
          );
        }).toList(),
      ),
    );
  }

  Widget gredianSection() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: customHeight * 0.80,
        width: customWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(35, 50, 69, 1.0),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  0.65,
                  1.0,
                ])),
      ),
    );
  }

  Widget layerWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        topLayer(),
        fetaureInfos(),
      ],
    );
  }

  Widget topLayer() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: customWidth * 0.02,
        vertical: customHeight * 0.005,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget fetaureInfos() {
    return SizedBox(
      height: customHeight * 0.15,
      width: customWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            featuredGames[selectedPage].title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
