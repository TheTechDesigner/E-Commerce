import 'package:e_commerce/chat/chat.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/signup/components/defaultButton.dart';
import 'package:e_commerce/widgets/emptySection.dart';
import 'package:e_commerce/widgets/subTitle.dart';
import 'package:flutter/material.dart';

class CallCenter extends StatefulWidget {
  CallCenter({Key key}) : super(key: key);

  @override
  _CallCenterState createState() => _CallCenterState();
}

class _CallCenterState extends State<CallCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Call Center",
        child: DefaultBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(
            emptyImg: callCenter,
            emptyMsg: "We're happy to help you!",
          ),
          SubTitle(
            subTitleText: "If you have complain about the product chat me",
          ),
          DefaultButton(
            btnText: "Chat Me",
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Chat(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
