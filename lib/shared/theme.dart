import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/shared/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kblack,
    appBarTheme: appBarTheme(),
    canvasColor: kyellow,
    textTheme: GoogleFonts.farroTextTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: kwhite,
    ),
    iconTheme: IconThemeData(color: kblack),
    primarySwatch: mcwhite,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: ktransparent,
    elevation: 0,
    titleTextStyle: GoogleFonts.farro(),
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: kwhite),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    borderSide: BorderSide(color: kblack, width: 3),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.all(25),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
