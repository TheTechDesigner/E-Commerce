import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'Setting Account',
        child: DefaultBackButton(),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: settingLabel.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              settingLabel[index],
              style: TextStyle(
                fontSize: 16.0,
                color:
                    index % 4 == 0 ? kDarkColor : kDarkColor.withOpacity(0.6),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: index % 4 == 0 ? kDarkColor : kDarkColor.withOpacity(0.6),
            ),
            enabled: settingLabel[index] == 'Account' ||
                    settingLabel[index] == 'Setting'
                ? false
                : true,
            onTap: () => this.setState(() {
              switch (settingLabel[index]) {
                case 'Address':
                  return snackBarMsg(context, 'Address');
                  break;
                case 'Telephone':
                  return snackBarMsg(context, 'Telephone');
                  break;
                case 'Email':
                  return snackBarMsg(context, 'Email');
                  break;
                case 'Order Notifications':
                  return snackBarMsg(context, 'Order Notifications');
                  break;
                case 'Discount Notifications':
                  return snackBarMsg(context, 'Discount Notifications');
                  break;
                case 'Credit Card':
                  return snackBarMsg(context, 'Credit Card');
                  break;
                case 'Logout':
                  return signOutDrawer(context);
                  break;
              }
            }),
          );
        },
        separatorBuilder: (context, index) {
          return settingLabel[index] == 'Email' ||
                  settingLabel[index] == 'Credit Card'
              ? kSmallDivider
              : Divider();
        },
      ),
    );
  }

  snackBarMsg(BuildContext context, String text) {
    var sb = SnackBar(
      elevation: kRadius,
      content: Text(text),
      duration: new Duration(seconds: 3),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
    scaffoldKey.currentState.showSnackBar(sb);
  }
}

void signOutDrawer(BuildContext context) {
  showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return Container(
          color: kPrimaryColor,
          height: 150.0,
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Are you sure you want Logout ?',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: kWhiteColor,
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: OutlineButton(
                      color: kPrimaryColor,
                      highlightedBorderColor: kWhiteColor,
                      borderSide: BorderSide(color: kWhiteColor),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      });
}
