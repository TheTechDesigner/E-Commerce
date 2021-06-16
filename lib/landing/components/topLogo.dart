import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(logo),
              height: 160.0,
            ),
            Text(
              'E-Commerce',
              style: kTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
