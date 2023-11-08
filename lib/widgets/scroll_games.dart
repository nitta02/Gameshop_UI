// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gameshop_ui/data.dart';

class ScrollGames extends StatelessWidget {
  final double customHeight;
  final double customWidth;
  final bool showTitle;
  final List<Game> list;
  const ScrollGames({
    Key? key,
    required this.customHeight,
    required this.customWidth,
    required this.showTitle,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: list.map((e) {
          return Container(
            height: customHeight * 0.4,
            width: customWidth * 0.3,
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            padding: EdgeInsets.only(
              left: customWidth * 0.005,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: customHeight * 0.35,
                  width: customWidth * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(e.coverImage.url),
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  e.title,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: customHeight * 0.035,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
