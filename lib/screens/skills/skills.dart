import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/skills/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lSkills(BuildContext context) {
  return Container(
    color: kblack,
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
    color: kblack,
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
