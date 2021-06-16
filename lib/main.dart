import 'package:e_commerce/Intro/intro.dart';
import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'customBehavior.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: kTransparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: CustomBehavior(),
          child: child,
        );
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        fontFamily: 'Jaapokki',
      ),
      home: Intro(),
    );
  }
}
