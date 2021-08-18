import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/certifications/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lCertifications(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kblack],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.3, 0.45],
      ),
    ),
    padding: EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        cerImage(context),
        cerTimeLine(context),
      ],
    ),
  );
}

Widget sCertifications(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [kwhite, kblack],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.45, 0.5],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        cerImage(context),
        cerTimeLine(context),
      ],
    ),
  );
}
