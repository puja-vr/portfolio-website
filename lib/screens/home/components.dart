import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/shared/screen_size.dart';

homeText(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.75
        : ScreenSize.screenWidth * 0.32,
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
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Hi! I'm",
              textScaleFactor: 1.5,
              style: TextStyle(color: kblack),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: kblack,
            child: Text(
              "Puja",
              textScaleFactor: 4,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "I am pursuing Computer Science and Engineering\nin St. Joseph's Institute of Technology, Chennai.\nI am an aspirant of data science and I love coding.\nI always wanted to explore new things.",
              softWrap: true,
              textScaleFactor: 1.25,
              style: TextStyle(color: kblack, height: 1.5),
            ),
          ),
        ],
      ),
    ),
  );
}

homeImage(BuildContext context) {
  return Container(
      width: ResponsiveWidget.isLargeScreen(context)
          ? ScreenSize.screenWidth * 0.35
          : null,
      height: ResponsiveWidget.isSmallScreen(context)
          ? ScreenSize.screenHeight * 0.35
          : null,
      child: Image.asset("assets/home.jpg", fit: BoxFit.contain));
}
