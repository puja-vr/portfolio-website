import 'package:flutter/material.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/shared/screen_size.dart';
import 'package:timelines/timelines.dart';

cerTimeLine(BuildContext context) {
  List content = [
    {'text': "Programming using C, C++ & DST", 'support': "NIIT – T.Nagar"},
    {'text': "Programming in Java", 'support': "NIIT – T.Nagar"},
    {
      'text': "Developing Web applications using Servlets and JSP",
      'support': "NIIT – T.Nagar"
    },
    {
      'text': "Bootcamp on Machine Learning using Python",
      'support': "ScrollWell"
    },
    {
      'text': "The Complete Python and PostgresSQL Developer\nCourse",
      'support': "Udemy"
    },
    {'text': "Python Django Workshop", 'support': "Coding Blocks"},
    {
      'text': "Advance Course in Machine Learning using Python",
      'support': "CII, IIT-M – Digital Skills Academy’s\nProgramme"
    },
    {'text': "Django for Web Development", 'support': "Udemy"},
    {'text': "PostgresSQL High Performance Tuning Guide", 'support': "Udemy"},
    {
      'text': "15 days Machine Learning Internship",
      'support': "Barola Technologies"
    },
    {'text': "Complete PWA Bootcamp", 'support': "Udemy"},
  ];

  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.85
        : ScreenSize.screenWidth * 0.6,
    height: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenHeight * 0.5
        : ScreenSize.screenHeight * 0.8,
    child: SingleChildScrollView(
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(color: kyellow),
        mainAxisSize: MainAxisSize.min,
        builder: TimelineTileBuilder.connectedFromStyle(
          firstConnectorStyle: ConnectorStyle.dashedLine,
          lastConnectorStyle: ConnectorStyle.dashedLine,
          connectorStyleBuilder: (context, i) => ConnectorStyle.dashedLine,
          indicatorStyleBuilder: (context, i) => IndicatorStyle.outlined,
          itemCount: content.length,
          contentsAlign: ContentsAlign.alternating,
          oppositeContentsBuilder: (context, i) => Padding(
            padding: EdgeInsets.all(8),
            child: Text(content[i]['support'],
                style: TextStyle(color: kwhite, height: 1.5)),
          ),
          contentsBuilder: (context, i) => Card(
            color: kyellow,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(content[i]['text'],
                  style: TextStyle(color: kblack, height: 1.5)),
            ),
          ),
        ),
      ),
    ),
  );
}

cerImage(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      headingText("CERTIFICATIONS"),
      Container(
          width: ResponsiveWidget.isLargeScreen(context)
              ? ScreenSize.screenWidth * 0.2
              : null,
          height: ResponsiveWidget.isSmallScreen(context)
              ? ScreenSize.screenHeight * 0.3
              : null,
          child: Image.asset("assets/certifications.jpg", fit: BoxFit.contain)),
    ],
  );
}
