import 'package:e_commerce/bottomNavBar/bottomNavBar.dart';
import 'package:e_commerce/signin/signin.dart';
import 'package:e_commerce/signup/components/clearFullButton.dart';
import 'package:e_commerce/signup/components/defaultButton.dart';
import 'package:flutter/material.dart';

class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClearFullButton(
            darkText: 'Already have an account?',
            colorText: ' SignIn',
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn())),
          ),
          DefaultButton(
            btnText: 'Sign Up',
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => BottomNavBar(0))),
          ),
        ],
      ),
    );
  }
}
