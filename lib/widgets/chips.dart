import 'package:flutter/material.dart';
import '../constant.dart';

class Chips extends StatelessWidget {
  final String text;
  const Chips({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kLessPadding),
      child: Chip(
        backgroundColor: kWhiteColor,
        shadowColor: kDarkColor,
        shape: StadiumBorder(
          side: BorderSide(
            width: 4.0,
            color: kLightColor.withOpacity(0.1),
          ),
        ),
        label: Text(
          text,
          style: TextStyle(
            color: kDarkColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}