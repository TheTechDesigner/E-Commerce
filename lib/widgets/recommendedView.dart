import 'package:flutter/material.dart';
import '../constant.dart';

class RecommendedView extends StatelessWidget {
  final int column, items;
  final double ratio, heights, widths, top, bottom, left, right;
  final direction, itemBuilder;
  const RecommendedView({
    Key key,
    this.column,
    this.items,
    this.ratio,
    this.direction,
    this.heights,
    this.widths,
    this.itemBuilder,
    this.top,
    this.bottom,
    this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heights,
      width: widths,
      color: kWhiteColor,
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
      child: GridView.builder(
        scrollDirection: direction,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: column,
          childAspectRatio: ratio,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
        itemCount: items,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
