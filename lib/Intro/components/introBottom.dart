import 'package:e_commerce/Intro/components/clearDefaultButton.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/landing/landing.dart';
import 'package:flutter/material.dart';

class IntroBottom extends StatelessWidget {
  const IntroBottom({
    Key key,
    @required int currentPage,
  })  : _currentPage = currentPage,
        super(key: key);

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (_currentPage == 0 || _currentPage == 1)
            ? ClearDefaultButton(
                name: 'Skip',
                press: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Landing(),
                  ),
                ),
              )
            : ClearDefaultButton(
                name: '',
              ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: LinearProgressIndicator(
            backgroundColor: kWhiteColor,
            value: (_currentPage + 1) / (introData.length + 0),
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
          ),
        ),
        (_currentPage == 2)
            ? ClearDefaultButton(
                name: 'Done',
                press: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Landing(),
                  ),
                ),
              )
            : ClearDefaultButton(
                name: '',
              ),
      ],
    );
  }
}
