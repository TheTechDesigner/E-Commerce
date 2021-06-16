import 'package:e_commerce/Intro/components/emptyAppBar.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/landing/components/topLogo.dart';
import 'package:e_commerce/signin/signin.dart';
import 'package:e_commerce/signup/components/clearFullButton.dart';
import 'package:e_commerce/signup/components/defaultButton.dart';
import 'package:e_commerce/signup/components/defaultTextField.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: EmptyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopLogo(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        "Enter your registered email address. We'll send you an email to reset your password.",
                        style: kDarkTextStyle,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    DefaultTextField(
                      obscureText: false,
                      hintText: 'Email address',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClearFullButton(
                      darkText: 'Back to',
                      colorText: ' SignIn.',
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignIn())),
                    ),
                    DefaultButton(
                      btnText: 'Submit',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
