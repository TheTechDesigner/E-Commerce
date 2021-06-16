import 'package:e_commerce/address/address.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(title: "Cart"),
      bottomNavigationBar: Material(
        elevation: kLess,
        color: kWhiteColor,
        child: Row(
          children: [
            Expanded(
                child: Text("Total : \$975",
                    textAlign: TextAlign.center, style: kSubTextStyle)),
            Expanded(
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
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                padding: EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(border: Border.all(color: kAccentColor)),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(cartItems[index].image),
                      height: 110.0,
                      width: 110.0,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItems[index].title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: kFixPadding)),
                            Text(cartItems[index].desc,
                                style: TextStyle(
                                    fontSize: 12.0, color: kLightColor)),
                            Text("\$ ${cartItems[index].price.toString()}"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (cartItems[index].quantity > 0) {
                                          cartItems[index].quantity--;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      color: kPrimaryColor,
                                    )),
                                Container(
                                    width: 44.0,
                                    height: 44.0,
                                    padding: EdgeInsets.only(top: 22.0),
                                    color: kAccentColor,
                                    child: TextField(
                                      enabled: false,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: cartItems[index]
                                              .quantity
                                              .toString(),
                                          hintStyle:
                                              TextStyle(color: kDarkColor)),
                                    )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        // Max 5
                                        if (cartItems[index].quantity <= 4) {
                                          cartItems[index].quantity++;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      color: kPrimaryColor,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
