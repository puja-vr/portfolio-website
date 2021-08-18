import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/home/components.dart';

Widget lHome(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 50),
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
