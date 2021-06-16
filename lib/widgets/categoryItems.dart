import 'package:flutter/material.dart';

import '../constant.dart';

class CategoryItems extends StatelessWidget {
  final double height,
      width,
      radius,
      titleSize,
      amountSize,
      paddingHorizontal,
      paddingVertical;
  final String image, title, amount;
  final Color color, lblColor;
  final align, blendMode;
  const CategoryItems({
    Key key,
    this.height,
    this.width,
    this.radius,
    this.titleSize,
    this.image,
    this.title,
    this.color,
    this.align,
    this.amount,
    this.lblColor,
    this.blendMode,
    this.amountSize,
    this.paddingHorizontal,
    this.paddingVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kLess),
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(color, blendMode),
              ),
            ),
          ),
          Align(
            alignment: align,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(color: kWhiteColor, fontSize: titleSize),
                  ),
                  WidgetSpan(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: paddingHorizontal,
                        vertical: paddingVertical,
                      ),
                      decoration: BoxDecoration(
                        color: lblColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: amount,
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: amountSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
