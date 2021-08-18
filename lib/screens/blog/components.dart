import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/screens/log_in.dart/log_in.dart';
import 'package:my_profile/service/database.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/widgets/default_button.dart';
import 'package:my_profile/widgets/likes.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/shared/screen_size.dart';

import 'dart:html' as html;

bHeading(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      headingText("MY BLOGS"),
      Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: DefaultButton(
          text: "ADD BLOG",
          press: () => popUp(context),
        ),
      ),
    ],
  );
}

blogList(BuildContext context) {
  return Container(
    width: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenWidth * 0.8
        : ScreenSize.screenWidth * 0.75,
    height: ResponsiveWidget.isSmallScreen(context)
        ? ScreenSize.screenHeight * 0.65
        : ScreenSize.screenHeight * 0.6,
    child: StreamBuilder(
      stream: DatabaseService().blogCollection.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.connectionState == ConnectionState.active)
          return ListView(
            scrollDirection: Axis.horizontal,
            children: snapshot.data!.docs.map((doc) {
              return blogCard(
                id: doc.id,
                title: doc['title'],
                date: doc['date'].toDate(),
                content: doc['content'],
                likes: doc['likes'],
              );
            }).toList(),
          );

        return CircularProgressIndicator();
      },
    ),
  );
}

Widget blogCard(
    {required String id,
    required String title,
    required DateTime date,
    required String content,
    required int likes}) {
  return Container(
    margin: EdgeInsets.all(20),
    width: 350,
    decoration: BoxDecoration(
        color: kyellow, boxShadow: [BoxShadow(color: kwhite, blurRadius: 10)]),
    child: Stack(
      children: [
        Positioned(
          width: 250,
          left: 30,
          top: 30,
          bottom: 30,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Text("${date.day}-${date.month}-${date.year}"),
              SizedBox(height: 30),
              Text(content, style: TextStyle(height: 1.5)),
            ],
          ),
        ),
        Positioned(
          right: 30,
          top: 30,
          child: Column(
            children: [
              Likes(id: id, likes: likes),
              SizedBox(height: 10),
              Text("$likes"),
            ],
          ),
        ),
      ],
    ),
  );
}

contact(BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(
      color: kwhite,
      borderRadius: BorderRadius.circular(30),
    ),
    width: ResponsiveWidget.isLargeScreen(context)
        ? ScreenSize.screenWidth * 0.3
        : ScreenSize.screenWidth * 0.8,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () =>
                html.window.open("https://github.com/puja-vr", "GitHub"),
            icon: Image.asset("assets/github.png"),
            iconSize: 50),
        IconButton(
            onPressed: () => html.window.open(
                "https://www.linkedin.com/in/puja-v-r-4bb47120b/", "LinkedIn"),
            icon: Image.asset("assets/linkedin.png"),
            iconSize: 50),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/discord.png"),
            iconSize: 50),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/insta.png"),
            iconSize: 50),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/pinterest.png"),
            iconSize: 50),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/mail.png"),
            iconSize: 50),
      ],
    ),
  );
}
