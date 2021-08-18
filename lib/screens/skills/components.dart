import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/shared/screen_size.dart';

skiList(BuildContext context) {
  List l1 = ["C, C++", "Java", "Python", "Dart", "HTML", "SQL"];
  List l2 = [
    "Django",
    "PostgreSQL",
    "Flutter",
    "Figma",
    "MS Office",
    "Python for data science",
    "Adobe Photoshop",
    "Adobe Premier Pro"
  ];
  bool isSmall = ResponsiveWidget.isSmallScreen(context);
  double sWidth = ScreenSize.screenWidth * 0.8;
  double lWidth = ScreenSize.screenWidth * 0.32;

  Card skillCard(String name) {
    return Card(
      color: kyellow,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(10),
        width: isSmall ? sWidth / 2.25 : lWidth / 2.25,
        child: Text(name),
      ),
    );
  }

  return Container(
    width: isSmall ? sWidth : lWidth,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: AnimationConfiguration.toStaggeredList(
              duration: Duration(milliseconds: 1000),
              childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 100,
                    child: FadeInAnimation(
                      delay: Duration(milliseconds: 200),
                      child: widget,
                    ),
                  ),
              children: l1.map((i) => skillCard(i)).toList()),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: AnimationConfiguration.toStaggeredList(
              duration: Duration(milliseconds: 1000),
              childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 100,
                    child: FadeInAnimation(
                      delay: Duration(milliseconds: 200),
                      child: widget,
                    ),
                  ),
              children: l2.map((i) => skillCard(i)).toList()),
        ),
      ],
    ),
  );
}

skiImage(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      headingText("SKILLS"),
      Container(
          width: ResponsiveWidget.isLargeScreen(context)
              ? ScreenSize.screenWidth * 0.25
              : null,
          height: ResponsiveWidget.isSmallScreen(context)
              ? ScreenSize.screenHeight * 0.25
              : null,
          child: Image.asset("assets/skills.jpg", fit: BoxFit.contain)),
    ],
  );
}
