import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroData extends StatelessWidget {
  final String introImage, headText, descText;
  const IntroData({Key key, this.introImage, this.headText, this.descText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Stack(
            children: [
              SvgPicture.asset(
                whiteShape,
                color: kWhiteColor,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 175.0,
                right: 0,
                left: 0,
                child: Image(
                  image: AssetImage(introImage),
                  height: 150.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          headText,
          textAlign: TextAlign.center,
          style: kHeadTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text(
            descText,
            textAlign: TextAlign.center,
            style: kSubTextStyle,
          ),
        ),
      ],
    );
  }
}
