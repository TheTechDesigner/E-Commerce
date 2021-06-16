import 'package:e_commerce/Intro/components/emptyAppBar.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/landing/components/bottomButtons.dart';
import 'package:e_commerce/landing/components/centerTagLine.dart';
import 'package:e_commerce/landing/components/topLogo.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: EmptyAppBar(),
      body: Column(
        children: [
          TopLogo(),
          CenterTagLine(),
          BottomButtons(),
        ],
      ),
    );
  }
}
