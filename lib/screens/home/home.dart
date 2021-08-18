import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/home/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lHome(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 50),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kyellow],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.5, 0.7],
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        homeImage(context),
        homeText(context),
      ],
    ),
  );
}

Widget sHome(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kyellow],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.4, 0.6],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        homeImage(context),
        homeText(context),
      ],
    ),
  );
}
