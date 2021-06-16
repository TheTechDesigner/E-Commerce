import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class OutlineDefaultButton extends StatelessWidget {
  final Function press;
  final String btnText;
  const OutlineDefaultButton({
    Key key, this.press, this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OutlineButton(
        padding: EdgeInsets.symmetric(vertical: kLessPadding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kShape),
        ),
        borderSide: BorderSide(
          color: kPrimaryColor,
          style: BorderStyle.solid,
        ),
        splashColor: kTransparent,
        highlightColor: kTransparent,
        highlightedBorderColor: kPrimaryColor,
        textColor: kPrimaryColor,
        onPressed: press,
        child: Text(btnText.toUpperCase()),
      ),
    );
  }
}
