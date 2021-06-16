import 'package:e_commerce/Intro/components/emptyAppBar.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/landing/components/topLogo.dart';
import 'package:e_commerce/signup/components/bottomWidgets.dart';
import 'package:e_commerce/signup/components/centerTextFields.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: EmptyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TopLogo(),
              CenterTextfields(),
              BottomWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
