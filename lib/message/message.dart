import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/widgets/emptySection.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  Message({Key key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'Message',
        child: DefaultBackButton(),
      ),
      body: EmptySection(
        emptyImg: chatBubble,
        emptyMsg: 'No message yet',
      ),
    );
  }
}
