import 'package:e_commerce/Intro/components/emptyAppBar.dart';
import 'package:e_commerce/bottomNavBar/bottomNavBar.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/forgot/forgot.dart';
import 'package:e_commerce/landing/components/topLogo.dart';
import 'package:e_commerce/signup/components/clearFullButton.dart';
import 'package:e_commerce/signup/components/defaultButton.dart';
import 'package:e_commerce/signup/components/defaultTextField.dart';
import 'package:e_commerce/signup/signup.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultTextField(
                      obscureText: false,
                      hintText: 'Email address',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: kFixPadding),
                    DefaultTextField(
                      obscureText: true,
                      hintText: 'Password',
                      icon: Icons.lock,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: kFixPadding),
                    ClearFullButton(
                      darkText: 'I forgot my',
                      colorText: ' Password.',
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword())),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClearFullButton(
                      darkText: "Don't have an account?",
                      colorText: ' SignUp.',
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp())),
                    ),
                    DefaultButton(
                      btnText: 'Sign In',
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BottomNavBar(0))),
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
