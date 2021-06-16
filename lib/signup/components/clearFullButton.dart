import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class ClearFullButton extends StatelessWidget {
  final String darkText, colorText;
  final Function onPressed;
  const ClearFullButton({
    Key key,
    this.darkText,
    this.colorText, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: kTransparent,
      highlightColor: kTransparent,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: darkText,
              style: kDarkTextStyle,
            ),
            TextSpan(
              text: colorText,
              style: kTitleTextStyle,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
