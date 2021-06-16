import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class TrackOrder extends StatefulWidget {
  TrackOrder({Key key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Track My Order",
        child: DefaultBackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Wed, 12 September",
              style: TextStyle(
                fontSize: 18.0,
                color: kLightColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Order ID : 5136 - 9ui2 - 129i2",
              style: TextStyle(
                fontSize: 18.0,
                color: kLightColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
            ),
            child: Text(
              "Orders",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 6,
                child: IconStepper(
                  direction: Axis.vertical,
                  enableNextPreviousButtons: false,
                  enableStepTapping: false,
                  stepColor: Colors.green,
                  activeStepBorderColor: kWhiteColor,
                  activeStepBorderWidth: 0.0,
                  activeStepBorderPadding: 0.0,
                  lineColor: Colors.green,
                  lineLength: 70.0,
                  lineDotRadius: 2.0,
                  stepRadius: 16.0,
                  icons: [
                    Icon(Icons.radio_button_checked, color: Colors.green),
                    Icon(Icons.check, color: kWhiteColor),
                    Icon(Icons.check, color: kWhiteColor),
                    Icon(Icons.check, color: kWhiteColor),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: trackOrderList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            leading: Icon(
                              trackOrderList[index].icon,
                              size: 48.0,
                              color: kPrimaryColor,
                            ),
                            title: Text(
                              trackOrderList[index].title,
                              style: TextStyle(fontSize: 18.0),
                            ),
                            subtitle: Text(
                              trackOrderList[index].subtitle,
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                        Text(
                          trackOrderList[index].time,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.only(left: 24.0, top: 16.0, bottom: 16.0),
            decoration: BoxDecoration(
              color: kWhiteColor,
              border: Border.all(
                width: 0.5,
                color: kLightColor,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(Icons.home, size: 64.0, color: kPrimaryColor),
                SizedBox(width: 32.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "Home, Work & Other Address",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: kDarkColor.withOpacity(0.7),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Text(
                          "House No: 1234, 2nd Floor Sector 18, Silicon Valey Amerika Serikat",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: kDarkColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
