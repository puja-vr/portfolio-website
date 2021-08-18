import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/projects/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lProjects(BuildContext context) {
  return Container(
    color: kblack,
    padding: EdgeInsets.only(top: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        headingText("PROJECTS"),
        projGrid(context),
      ],
    ),
  );
}

Widget sProjects(BuildContext context) {
  return Container(
    color: kblack,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        headingText("PROJECTS"),
        CarouselSlider(
          items: [
            projCard(
                name: "Gruha Mart",
                desc: "An e-commerce application",
                lang: "Flutter"),
            projCard(
                name: "Screen Shot Saver",
                desc: "Saves the screenshots in a Word file automatically",
                lang: "Python"),
            projCard(
                name: "Music Player",
                desc: "A basic music player with a playlist",
                lang: "Java Swing"),
            projCard(
                name: "Area and Place Locator",
                desc: "Manages areas and the places inside it",
                lang: "Java Swing"),
          ],
          options: CarouselOptions(
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
        ),
      ],
    ),
  );
}
