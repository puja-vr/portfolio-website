import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/skills/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lSkills(BuildContext context) {
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
        skiImage(context),
        skiList(context),
      ],
    ),
  );
}

Widget sSkills(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kblack],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.4, 0.6],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        skiImage(context),
        skiList(context),
      ],
    ),
  );
}
