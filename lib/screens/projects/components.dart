import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/shared/screen_size.dart';

projGrid(BuildContext context) {
  return Container(
    width: ScreenSize.screenWidth * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: AnimationConfiguration.toStaggeredList(
        duration: Duration(milliseconds: 1000),
        childAnimationBuilder: (widget) => SlideAnimation(
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imgCard("grid1.jpg"),
              projCard(
                  name: "Gruha Mart",
                  desc: "An e-commerce application",
                  lang: "Flutter"),
              projCard(
                  name: "Screen Shot Saver",
                  desc: "Saves the screenshots in a Word file automatically",
                  lang: "Python"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              projCard(
                  name: "Music Player",
                  desc: "A basic music player with a playlist",
                  lang: "Java Swing"),
              projCard(
                  name: "Area and Place Locator",
                  desc: "Manages areas and the places inside it",
                  lang: "Java Swing"),
              imgCard("grid2.jpg"),
            ],
          ),
        ],
      ),
    ),
  );
}

projCard({required String name, required String desc, required String lang}) {
  return Container(
    padding: EdgeInsets.all(15),
    height: 200,
    width: 300,
    decoration: BoxDecoration(
        color: Colors.white12, border: Border.all(color: kyellow, width: 2)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$name\n",
            textAlign: TextAlign.center,
            style: TextStyle(color: kyellow, fontSize: 18)),
        Text("$desc\n",
            textAlign: TextAlign.center,
            style: TextStyle(color: kwhite, fontSize: 15, height: 1.5)),
        Text("$lang", style: TextStyle(color: kyellow, fontSize: 18)),
      ],
    ),
  );
}

imgCard(String image) {
  return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(border: Border.all(color: kyellow, width: 2)),
      child: Image.asset(image, fit: BoxFit.fill));
}
