import 'package:flutter/material.dart';
import 'package:my_profile/service/auth.dart';
import 'package:my_profile/service/database.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/shared/screen_size.dart';
import 'package:my_profile/widgets/default_button.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:overlay_support/overlay_support.dart';

class AddBlog extends StatefulWidget {
  @override
  _AddBlogState createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  late String title;
  late String content;
  late DateTime date;
  final _ctitle = TextEditingController();
  final _ccontent = TextEditingController();
  bool empty = true;
  final AuthService as = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kyellow,
      body: Container(
        //   width: ResponsiveWidget.isSmallScreen(context)
        //     ? null
        //     : ScreenSize.screenWidth * 0.5,
        // height: ResponsiveWidget.isSmallScreen(context)
        //     ? null
        //     : ScreenSize.screenHeight * 0.4,
        //color: kyellow,
        padding: ResponsiveWidget.isSmallScreen(context)
            ? EdgeInsets.fromLTRB(50, 0, 50, 0)
            : EdgeInsets.fromLTRB(200, 0, 200, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultButton(
                    text: "LOG OUT",
                    bColor: kblack,
                    tColor: kwhite,
                    press: () async {
                      var result = await as.signOut();
                      print("logged out");
                      Navigator.of(context).pop();
                    })
              ],
            ),
            SizedBox(height: 30),
            DefaultButton(
              text: "ADD BLOG",
              bColor: kblack,
              tColor: kwhite,
              press: () {
                if (empty == false) {
                  date = DateTime.now();
                  DatabaseService().addBlog(title, content, date);
                  showInfo(context);
                }
                setState(() {
                  _ctitle.clear();
                  _ccontent.clear();
                  empty = true;
                });
              },
            ),
            SizedBox(height: 30),
            TextField(
              controller: _ctitle,
              onChanged: (t) {
                setState(() {
                  title = t;
                  if (t.isNotEmpty) empty = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter title",
              ),
            ),
            SizedBox(height: 30),
            TextField(
              maxLines: 12,
              controller: _ccontent,
              onChanged: (c) {
                setState(() {
                  content = c;
                  if (c.isNotEmpty) empty = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter content",
              ),
            ),
          ],
        ),
      ),
    );
  }

  showInfo(BuildContext context) {
    return showOverlayNotification((context) {
      return Card(
        child: Container(
          width: 200,
          color: kwhite,
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: ListTile(
              leading: Icon(Icons.check_circle_rounded, color: kyellow),
              title: Text('Blog added!')),
        ),
      );
    }, duration: Duration(seconds: 3));
  }
}
