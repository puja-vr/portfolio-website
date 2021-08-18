import 'package:flutter/material.dart';
import 'package:my_profile/shared/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color bColor, tColor;

  DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.bColor = kyellow,
    this.tColor = kblack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () => press(),
        child: Text(
          text,
          style: TextStyle(
              color: tColor, fontWeight: FontWeight.bold, letterSpacing: 1.25),
        ),
      ),
    );
  }
}
