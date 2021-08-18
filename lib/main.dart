import 'package:flutter/material.dart';
import 'package:my_profile/shared/theme.dart';
import 'package:my_profile/wrapper/large_screen.dart';
import 'package:my_profile/wrapper/responsive.dart';
import 'package:my_profile/wrapper/small_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: "Portfolio | Puja V R",
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: Scaffold(
          body: ResponsiveWidget(
              largeScreen: LargeScreen(), smallScreen: SmallScreen()),
        ),
      ),
    );
  }
}
