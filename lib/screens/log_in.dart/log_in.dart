import 'package:flutter/material.dart';
import 'package:my_profile/screens/log_in.dart/add_blog.dart';
import 'package:my_profile/service/auth.dart';
import 'package:my_profile/shared/constants.dart';
import 'package:my_profile/shared/screen_size.dart';
import 'package:my_profile/widgets/default_button.dart';
import 'package:my_profile/wrapper/responsive.dart';

final _formKey = GlobalKey<FormState>();
late String email;
late String password;
final AuthService as = AuthService();

Future<bool?> popUp(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      titlePadding: EdgeInsets.all(10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Image.asset("icons/close.png"),
          ),
        ],
      ),
      content: Container(
        width: ResponsiveWidget.isSmallScreen(context)
            ? null
            : ScreenSize.screenWidth * 0.4,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildEmailFormField(),
              SizedBox(height: 30),
              buildPasswordFormField(),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: DefaultButton(
                        text: "LOG IN",
                        bColor: kblack,
                        tColor: kwhite,
                        press: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          _formKey.currentState!.save();
                          var result = await as.signInWithEmailAndPassword(
                              email, password);
                          print("$result");
                          if (result != null)
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => AddBlog()));
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      contentPadding: ResponsiveWidget.isSmallScreen(context)
          ? EdgeInsets.fromLTRB(40, 10, 40, 40)
          : EdgeInsets.fromLTRB(70, 0, 70, 60),
      contentTextStyle: TextStyle(color: kblack),
      backgroundColor: kyellow,
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  );
}

TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    onSaved: (newValue) => password = newValue!,
    // onChanged: (value) {
    //   setState(() {
    //     password = value;
    //   });
    // },
    decoration: InputDecoration(
      hintText: "Enter password",
      suffixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Icon(Icons.vpn_key_rounded),
      ),
      filled: false,
    ),
  );
}

TextFormField buildEmailFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    onSaved: (newValue) => email = newValue!,
    textInputAction: TextInputAction.next,
    // onChanged: (value) {
    //   setState(() {
    //     email = value;
    //   });
    // },
    decoration: InputDecoration(
      hintText: "Enter email",
      suffixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Icon(Icons.mail),
      ),
      filled: false,
    ),
  );
}
