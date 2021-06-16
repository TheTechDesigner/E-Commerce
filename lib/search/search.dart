import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/widgets/chips.dart';
import 'package:e_commerce/widgets/headerLabel.dart';
import 'package:e_commerce/widgets/recommendedItems.dart';
import 'package:e_commerce/widgets/recommendedView.dart';
import 'package:e_commerce/widgets/stickyLabel.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Search",
        child: DefaultBackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderLabel(
              headerText:
                  "Hello, i am E-Commerce. What would you like to search?",
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(width: 4.0, color: kAccentColor),
              ),
              child: TextField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: kPrimaryColor),
                  hintText: "Find you want",
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: kLightColor.withOpacity(0.4),
                  ),
                ),
              ),
            ),
            StickyLabel(
              text: "Popular Keyword",
              textColor: kLightColor.withOpacity(0.4),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16.0,
                left: kFixPadding,
                right: kDefaultPadding,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    chipsCategory.length,
                    (int index) {
                      return Chips(text: chipsCategory[index]);
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8.0,
                left: kFixPadding,
                right: kDefaultPadding,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    chipsMobile.length,
                    (int index) {
                      return Chips(text: chipsMobile[index]);
                    },
                  ),
                ),
              ),
            ),
            StickyLabel(
              text: "Favorite",
              textColor: kLightColor.withOpacity(0.4),
            ),
            RecommendedView(
              direction: Axis.horizontal,
              heights: 210.0,
              widths: MediaQuery.of(context).size.width,
              top: 16.0,
              bottom: 4.0,
              left: kDefaultPadding,
              right: kDefaultPadding,
              column: 1,
              ratio: 1.4,
              items: recommendedList.length,
              itemBuilder: (context, index) {
                return RecommendedItems(
                  height: 130.0,
                  top: 0.0,
                  bottom: 0.0,
                  left: 0.0,
                  right: kLessPadding,
                  radius: kLessPadding,
                  image: recommendedList[index].image,
                  title: recommendedList[index].title,
                  price: recommendedList[index].price,
                  rating: recommendedList[index].rating,
                  sale: recommendedList[index].sale,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
