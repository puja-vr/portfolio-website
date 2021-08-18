import 'package:flutter/material.dart';

const kyellow = Color(0xFFFFE000);
const kblack = Color(0xFF000000);
const kwhite = Color(0xFFFFFFFF);
const ktransparent = Colors.transparent;

const MaterialColor mcwhite = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

Widget headingText(String text) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Text(
      text,
      style: TextStyle(
        color: kyellow,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.25,
      ),
    ),
  );
}
