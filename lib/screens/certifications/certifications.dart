import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/certifications/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lCertifications(BuildContext context) {
  return Container(
    color: kblack,
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
    color: kblack,
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
