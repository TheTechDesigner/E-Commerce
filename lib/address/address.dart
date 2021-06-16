import 'package:e_commerce/constant.dart';
import 'package:e_commerce/notification/components/defaultAppBar.dart';
import 'package:e_commerce/notification/components/defaultBackButton.dart';
import 'package:e_commerce/payment/payment.dart';
import 'package:e_commerce/signup/components/defaultButton.dart';
import 'package:e_commerce/signup/components/defaultTextField.dart';
import 'package:e_commerce/widgets/headerLabel.dart';
import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key key}) : super(key: key);

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: "Delivery Address",
        child: DefaultBackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderLabel(
              headerText: "Where are your ordered items shipped?",
            ),
            DefaultTextField(
              hintText: "State",
              icon: Icons.map,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: kFixPadding,
            ),
            DefaultTextField(
              hintText: "City",
              icon: Icons.location_city,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: kFixPadding,
            ),
            DefaultTextField(
              hintText: "Locality",
              icon: Icons.landscape,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: kFixPadding,
            ),
            DefaultTextField(
              hintText: "Pincode",
              icon: Icons.location_city,
              obscureText: false,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            DefaultButton(
              btnText: "Go to payment",
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Payment(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
