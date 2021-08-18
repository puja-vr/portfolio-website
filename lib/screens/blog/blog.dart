import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_profile/screens/blog/components.dart';
import 'package:my_profile/shared/constants.dart';

Widget lBlog(BuildContext context) {
  return Container(
    color: kblack,
    padding: EdgeInsets.only(top: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        bHeading(context),
        blogList(context),
        contact(context),
      ],
    ),
  );
}

Widget sBlog(BuildContext context) {
  return Container(
    color: kblack,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        bHeading(context),
        blogList(context),
        contact(context),
      ],
    ),
  );
}
