import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/widgets/emptySection.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Chat",
        child: DefaultBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: EmptySection(
              emptyImg: conversation,
              emptyMsg: "No message yet",
            ),
          ),
          Expanded(
            flex: 0,
            child: Material(
              elevation: kLess,
              color: kWhiteColor,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: kLess),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: kPrimaryColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: kLess),
                        padding: EdgeInsets.symmetric(horizontal: kLessPadding),
                        decoration: BoxDecoration(
                            border: Border.all(color: kAccentColor),
                            color: kWhiteColor),
                        child: TextField(
                          cursorColor: kPrimaryColor,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter some text to send a message",
                            hintStyle: TextStyle(color: kLightColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
