import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/education/components.dart';
import 'package:my_profile/shared/constants.dart';

import 'dart:html' as html;

Widget lEducation(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kblack],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.45, 0.7],
      ),
    ),
    padding: EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        eduImage(context),
        eduList(context),
      ],
    ),
  );
}

Widget sEducation(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kblack],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.55, 0.7],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        eduImage(context),
        CarouselSlider(
          items: [
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
                press: () => html.window
                    .open("https://www.sushilharischool.in/", "Shirs"),
                image: "assets/Shirs.png"),
            nameCard(
                name: "The Ashram Matriculation HSS",
                year: "2004 - 2017",
                press: () =>
                    html.window.open("http://www.theashram.in/", "Ashram"),
                image: "assets/Ashram.png"),
          ],
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
        ),
      ],
    ),
  );
}
