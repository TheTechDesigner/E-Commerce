import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/notification/components/notificationTiles.dart';
import 'package:flutter/material.dart';

import 'components/descSection.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'About Application',
        child: DefaultBackButton(),
      ),
      body: Column(
        children: [
          NotificationTiles(
            title: 'E-Commerce',
            subtitle: 'UI KIT E-Commerce',
            enable: false,
          ),
          Divider(),
          DescSection(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          ),
          DescSection(
            text:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
          ),
        ],
      ),
    );
  }
}
