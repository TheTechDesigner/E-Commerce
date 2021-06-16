import 'package:flutter/material.dart';

import '../constant.dart';

class SubTitle extends StatelessWidget {
  final String subTitleText;
  const SubTitle({
    Key key,
    this.subTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kFixPadding),
      child: Text(
        subTitleText,
        textAlign: TextAlign.center,
        style: kSubTextStyle,
      ),
    );
  }
}
