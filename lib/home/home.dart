import 'dart:async';
import 'package:e_commerce/bottomNavBar/bottomNavBar.dart';
import 'package:e_commerce/category/category.dart';
import 'package:e_commerce/message/message.dart';
import 'package:e_commerce/notification/notificationList.dart';
import 'package:e_commerce/products/products.dart';
import 'package:e_commerce/widgets/categoryItems.dart';
import 'package:e_commerce/widgets/categoryView.dart';
import 'package:e_commerce/widgets/recommendedItems.dart';
import 'package:e_commerce/widgets/recommendedView.dart';
import 'package:e_commerce/widgets/searchBar.dart';
import 'package:e_commerce/widgets/stickyLabel.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentIndex < sliderImages.length) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: SearchBar(),
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: kWhiteColor),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Message(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: kWhiteColor),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NotificationList(),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250.0,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: sliderImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        sliderImages[index],
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      sliderImages.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 8.0,
                        width: currentIndex == index ? 24.0 : 8.0,
                        margin: EdgeInsets.only(right: 4.0),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? kPrimaryColor
                              : kLightColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StickyLabel(text: "Menu"),
            Container(
              height: 220.0,
              padding: EdgeInsets.only(top: 14.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ),
                itemCount: menuLabels.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Icon(
                        menuIcons[index],
                        color: kPrimaryColor,
                        size: 34.0,
                      ),
                      Text(
                        menuLabels[index],
                        style: TextStyle(color: kLightColor),
                      ),
                    ],
                  );
                },
              ),
            ),
            kDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(text: "Week Promotion"),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Products(false),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding),
                    child:
                        StickyLabel(text: "View All", textColor: kPrimaryColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Categoryview(
                direction: Axis.horizontal,
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                color: kWhiteColor,
                column: 1,
                ratio: 1.5,
                items: 6,
                itemBuilder: (context, index) {
                  return CategoryItems(
                    height: MediaQuery.of(context).size.height,
                    width: 400.0,
                    paddingVertical: 4.0,
                    paddingHorizontal: 16.0,
                    radius: 0.0,
                    image: categoryList[index].image,
                    amount: "10%",
                    lblColor: kPrimaryColor,
                    align: Alignment.topRight,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(text: "Category"),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding),
                    child:
                        StickyLabel(text: "View All", textColor: kPrimaryColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Categoryview(
                direction: Axis.horizontal,
                height: 300.0,
                width: MediaQuery.of(context).size.width,
                color: kWhiteColor,
                column: 2,
                ratio: 1.0,
                items: 8,
                itemBuilder: (context, index) {
                  return CategoryItems(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    paddingHorizontal: 0.0,
                    paddingVertical: 0.0,
                    radius: 8.0,
                    blendMode: BlendMode.hardLight,
                    color: kDarkColor,
                    image: categoryList[index].image,
                    title: categoryList[index].category,
                    titleSize: kFixPadding,
                    align: Alignment.center,
                  );
                },
              ),
            ),
            kDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(text: "Recommended"),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Products(true),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding),
                    child:
                        StickyLabel(text: "View All", textColor: kPrimaryColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: RecommendedView(
                direction: Axis.horizontal,
                heights: 315.0,
                widths: MediaQuery.of(context).size.width,
                top: 0.0,
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                column: 1,
                ratio: 1.8,
                items: 6,
                itemBuilder: (context, index) {
                  return RecommendedItems(
                    height: 225.0,
                    radius: 8.0,
                    top: 8.0,
                    bottom: 8.0,
                    left: 4.0,
                    right: 4.0,
                    image: recommendedList[index].image,
                    title: recommendedList[index].title,
                    price: recommendedList[index].price,
                    rating: recommendedList[index].rating,
                    sale: recommendedList[index].sale,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
