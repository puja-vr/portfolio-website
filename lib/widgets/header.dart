import 'package:flutter/material.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/widgets/header_button.dart';

import 'dart:html' as html;

List<Widget> navButtons(PageController controller) {
  return [
    HeaderButton(
      text: "HOME",
      press: () => controller.animateToPage(0,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "SKILLS",
      press: () => controller.animateToPage(1,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "EDUCATION",
      press: () => controller.animateToPage(2,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "PROJECTS",
      press: () => controller.animateToPage(3,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "CERTIFICATIONS",
      press: () => controller.animateToPage(4,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "BLOG",
      press: () => controller.animateToPage(5,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
    HeaderButton(
      text: "CONTACT",
      press: () => controller.animateToPage(5,
          duration: Duration(milliseconds: 1200), curve: Curves.easeInOutSine),
    ),
  ];
}

class Header extends StatelessWidget {
  final PageController controller;
  Header(this.controller);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
      decoration: BoxDecoration(
        color: kyellow,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: navButtons(controller),
      ),
    );
  }
}
