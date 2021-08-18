import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/shared/screen_size.dart';

import 'dart:html' as html;

eduList(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isLargeScreen(context)
        ? ScreenSize.screenWidth * 0.32
        : ScreenSize.screenWidth * 0.8,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: AnimationConfiguration.toStaggeredList(
        duration: Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          nameCard(
              name: "St. Joseph's Institute of Technology",
              year: "2019 - 2023",
              press: () => html.window.open(
                  "http://stjosephstechnology.ac.in/web/index.html",
                  "StJoseph"),
              image: "assets/stJosephs.png"),
          nameCard(
              name: "Sushil Hari International HSS",
              year: "2017 - 2019",
              press: () =>
                  html.window.open("https://www.sushilharischool.in/", "Shirs"),
              image: "assets/Shirs.png"),
          nameCard(
              name: "The Ashram Matriculation HSS",
              year: "2004 - 2017",
              press: () =>
                  html.window.open("http://www.theashram.in/", "Ashram"),
              image: "assets/Ashram.png"),
        ],
      ),
    ),
  );
}

Card nameCard(
    {required String name,
    required String year,
    required dynamic press,
    required String image}) {
  return Card(
    color: kyellow,
    elevation: 0.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    margin: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 0, 15),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 5),
              child: Text(name),
            ),
            Text(year),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextButton(
                onPressed: () => press(),
                child: Text("Visit"),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

eduImage(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      headingText("EDUCATION"),
      Container(
        width: ResponsiveWidget.isLargeScreen(context)
            ? ScreenSize.screenWidth * 0.3
            : null,
        height: ResponsiveWidget.isSmallScreen(context)
            ? ScreenSize.screenHeight * 0.35
            : null,
        child: Image.asset("assets/education.jpg", fit: BoxFit.contain),
      ),
    ],
  );
}
