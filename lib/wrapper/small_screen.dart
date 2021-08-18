import 'package:flutter/material.dart';
import 'package:my_profile/screens/blog/blog.dart';
import 'package:my_profile/screens/certifications/certifications.dart';
import 'package:my_profile/screens/education/education.dart';
import 'package:my_profile/screens/home/home.dart';
import 'package:my_profile/screens/projects/projects.dart';
import 'package:my_profile/screens/skills/skills.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/shared/screen_size.dart';
import 'package:my_profile/widgets/header.dart';

class SmallScreen extends StatefulWidget {
  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    List<Widget> _list = [
      sHome(context),
      sSkills(context),
      sEducation(context),
      sProjects(context),
      sCertifications(context),
      sBlog(context),
    ];
    PageController controller = PageController(viewportFraction: 1.1);

    return Scaffold(
      backgroundColor: kyellow,
      extendBodyBehindAppBar: true,
      drawer: Container(
        width: 175,
        color: kyellow,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 30),
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.white, width: 1.5),
                  image: DecorationImage(
                    image: AssetImage("drawer.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Column(children: navButtons(controller)),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: _list,
      ),
    );
  }
}
