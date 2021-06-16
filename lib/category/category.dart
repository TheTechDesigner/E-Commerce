import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/search/search.dart';
import 'package:e_commerce/widgets/categoryItems.dart';
import 'package:e_commerce/widgets/categoryView.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Category",
        action: [
          IconButton(
            icon: isList ? Icon(Icons.apps) : Icon(Icons.list),
            onPressed: () {
              setState(() {
                isList = !isList;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Search(),
              ),
            ),
          ),
        ],
      ),
      body: Categoryview(
        direction: Axis.vertical,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: kWhiteColor,
        column: isList ? 1 : 2,
        ratio: isList ? 2.6 : 1.3,
        items: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItems(
            height: 150.0,
            width: MediaQuery.of(context).size.width,
            paddingHorizontal: 0.0,
            paddingVertical: 0.0,
            align: Alignment.center,
            radius: kLessPadding,
            blendMode: BlendMode.difference,
            color: kDarkColor,
            image: categoryList[index].image,
            title: categoryList[index].category,
            titleSize: 20.0,
            amount: "",
            amountSize: 0.0,
          );
        },
      ),
    );
  }
}
