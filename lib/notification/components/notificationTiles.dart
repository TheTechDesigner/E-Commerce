import 'package:flutter/material.dart';

import '../../constant.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final Function onTap;
  final bool enable;
  const NotificationTiles({
    Key key, this.title, this.subtitle, this.onTap, this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(logo), fit: BoxFit.cover))),
      title: Text(title, style: TextStyle(color: kDarkColor)),
      subtitle: Text(subtitle,
          style: TextStyle(color: kLightColor)),
      onTap: onTap,
      enabled: enable,
    );
  }
}