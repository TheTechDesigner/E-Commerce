import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/widgets/emptySection.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';

class Orders extends StatefulWidget {
  Orders({Key key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'My Orders',
        child: DefaultBackButton(),
      ),
      body: EmptySection(
        emptyImg: emptyOrders,
        emptyMsg: 'No orders yet',
      ),
    );
  }
}
