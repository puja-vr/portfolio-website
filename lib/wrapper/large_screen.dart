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

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    List<Widget> _list = [
      lHome(context),
      lSkills(context),
      lEducation(context),
      lProjects(context),
      lCertifications(context),
      lBlog(context),
    ];
    PageController controller = PageController(viewportFraction: 1.1);

    return Scaffold(
      backgroundColor: kyellow,
      body: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            pageSnapping: false,
            controller: controller,
            children: _list,
          ),
          Header(controller),
        ],
      ),
    );
  }
}
