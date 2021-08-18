import 'package:flutter/material.dart';
import 'package:my_profile/shared/constants.dart';

class HeaderButton extends StatelessWidget {
  final text;
  final press;
  final bool isSelected = false;

  HeaderButton({Key? key, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
      decoration: BoxDecoration(
        //color: ktransparent,
        border: Border.all(color: isSelected ? kblack : ktransparent),
      ),
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
              color: kblack, fontWeight: FontWeight.bold, letterSpacing: 1.25),
        ),
        onPressed: press,
      ),
    );
  }
}
