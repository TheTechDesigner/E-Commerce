import 'package:e_commerce/address/address.dart';
import 'package:e_commerce/bottomNavBar/bottomNavBar.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/message/message.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/products/products.dart';
import 'package:e_commerce/reviews/reviews.dart';
import 'package:e_commerce/widgets/recommendedItems.dart';
import 'package:e_commerce/widgets/recommendedView.dart';
import 'package:e_commerce/widgets/reviewUI.dart';
import 'package:e_commerce/widgets/stickyLabel.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  bool isMore = false;

  List<String> productSize = ["S", "M", "L", "XL"];

  List<Color> productColors = [
    kPrimaryColor,
    kDarkColor,
    Colors.orange,
    Colors.green
  ];

  List<String> detailImages = [
    "assets/images/joystick1.jpg",
    "assets/images/joystick2.png",
    "assets/images/joystick3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Product Details",
        child: DefaultBackButton(),
        action: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BottomNavBar(2),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        elevation: kLess,
        color: kWhiteColor,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0, left: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor, width: 2.0),
              ),
              child: IconButton(
                icon: Icon(Icons.add_shopping_cart, color: kPrimaryColor),
                onPressed: () => print("Add to Cart"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor, width: 2.0),
              ),
              child: IconButton(
                icon: Icon(Icons.chat, color: kPrimaryColor),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Message(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 52.0,
                decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor, width: 2.0),
                ),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: kLessPadding),
                  color: kPrimaryColor,
                  textColor: kWhiteColor,
                  child: Text("Pay", style: TextStyle(fontSize: 18.0)),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DeliveryAddress(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    itemCount: detailImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        detailImages[index],
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
                      detailImages.length,
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
            StickyLabel(text: "Xbox Wireless Controller"),
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Text(
                "\$ ${76.12}",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22.0)),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "8.9",
                            style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 18.0,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.top,
                            child: Icon(
                              Icons.star,
                              size: 18.0,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "${826} Sale",
                      style: TextStyle(
                        color: kDarkColor.withOpacity(0.4),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kLessPadding),
            kSmallDivider,
            // for shirt or Other Products who has the Size
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Text(
                "Size",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 44.0,
              margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kLessPadding),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productSize.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => print("Selected Size : ${productSize[index]}"),
                    child: Container(
                      height: 44.0,
                      width: 44.0,
                      margin: EdgeInsets.only(right: 8.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.0,
                          color: kDarkColor.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(44.0),
                      ),
                      child: Text(
                        productSize[index],
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kDarkColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            kSmallDivider,
            // for shirt or Other Products who has the Colors
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Text(
                "Color",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 44.0,
              margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kLessPadding),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productColors.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        print("Selected Color : ${productColors[index]}"),
                    child: Container(
                      height: 44.0,
                      width: 44.0,
                      margin: EdgeInsets.only(right: 8.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: productColors[index],
                        border: Border.all(
                          width: 3.0,
                          color: kDarkColor.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(44.0),
                      ),
                    ),
                  );
                },
              ),
            ),
            kSmallDivider,
            Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Text(
                "Desciption",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kLessPadding),
              child: isMore
                  ? Text(
                      "Xbox is a video gaming brand created and owned by Microsoft. The brand consists of five video game consoles, as well as applications (games), streaming services, an online service by the name of Xbox Live, and the development arm by the name of Xbox Game Studios. The brand was first introduced in the United States in November 2001, with the launch of the original Xbox console. The original device was the first video game console offered by an American company after the Atari Jaguar stopped sales in 1996. It reached over 24 million units sold as of May 2006. Microsoft's second console, the Xbox 360, was released in 2005 and has sold 84 million units as of June 2014. The third console, the Xbox One, was released in November 2013 and has sold 46.9 million units as of October 2019. The fourth and fifth consoles, Xbox Series X and Series S, were released in November 2020. The head of Xbox is Phil Spencer, who succeeded former head Marc Whitten in late March 2014.",
                      style: kSubTextStyle,
                    )
                  : Text(
                      "Xbox is a video gaming brand created and owned by Microsoft. The brand consists of five video game consoles, as well as applications (games), streaming services, an online service by the name of Xbox Live, and the development arm by the name of Xbox Game Studios. The brand was first introduced in the United States in November 2001, with the launch of the original Xbox console. The original device was the first video game console offered by an American company after the Atari Jaguar stopped sales in 1996. It reached over 24 million units sold as of May 2006. Microsoft's second console, the Xbox 360, was released in 2005 and has sold 84 million units as of June 2014. The third console, the Xbox One, was released in November 2013 and has sold 46.9 million units as of October 2019. The fourth and fifth consoles, Xbox Series X and Series S, were released in November 2020. The head of Xbox is Phil Spencer, who succeeded former head Marc Whitten in late March 2014.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: kSubTextStyle,
                    ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                isMore = !isMore;
              }),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: Text(
                    isMore ? "View Less" : "View More",
                    style: TextStyle(color: kPrimaryColor, fontSize: 20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: kLessPadding),
            kSmallDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(text: "Review"),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Reviews(),
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
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ReviewUI(
                  image: reviewList[index].image,
                  name: reviewList[index].name,
                  date: reviewList[index].date,
                  comment: reviewList[index].comment,
                  rating: reviewList[index].rating,
                  onPressed: () => print("More Action $index"),
                  onTap: () => setState(() {
                    isMore = !isMore;
                  }),
                  isLess: isMore,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2.0,
                  color: kAccentColor,
                );
              },
            ),
            kSmallDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(text: "Top Related Products"),
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
                heights: 250.0,
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
                    height: 150.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
