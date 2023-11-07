
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gameshop_ui/data.dart';
import 'package:gameshop_ui/widgets/scroll_games.dart';

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
        decoration: const BoxDecoration(
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          topLayer(),
          SizedBox(
            height: customHeight * 0.25,
          ),
          fetaureInfos(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: customHeight * 0.008,
            ),
            child: ScrollGames(
              customHeight: customHeight * 0.5,
              customWidth: customWidth,
              showTitle: true,
              list: games,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: customHeight * 0.15,
            width: customWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(featuredGames[1].coverImage.url)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: customHeight * 0.008,
            ),
            child: ScrollGames(
              customHeight: customHeight * 0.5,
              customWidth: customWidth,
              showTitle: true,
              list: games2,
            ),
          )
        ],
      ),
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
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: customWidth * 0.02,
        vertical: customHeight * 0.005,
      ),
      child: SizedBox(
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
                fontSize: customHeight * 0.045,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: featuredGames.map((e) {
                bool isActive = e.title == featuredGames[selectedPage].title;
                final double = customHeight * 0.004;
                return Container(
                  margin: EdgeInsets.only(right: customHeight * 0.01),
                  height: double * 1.45,
                  width: double * 4,
                  decoration: BoxDecoration(
                    color: isActive ? Colors.green : Colors.white54,
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
