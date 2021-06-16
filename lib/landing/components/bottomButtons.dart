import 'package:e_commerce/constant.dart';
import 'package:e_commerce/landing/components/outlineDefaultButton.dart';
import 'package:e_commerce/signin/signin.dart';
import 'package:e_commerce/signup/signup.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OutlineDefaultButton(
              btnText: 'Sign Up',
              press: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            OutlineDefaultButton(
              btnText: 'Sign In',
              press: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
