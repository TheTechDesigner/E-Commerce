import 'package:flutter/material.dart';

class PaymentModal {
  String date;
  String details;
  double amount;
  Color textColor;

  PaymentModal({this.date, this.details, this.amount, this.textColor});

  PaymentModal.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    details = json['details'];
    amount = json['amount'];
    textColor = json['textColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['details'] = this.details;
    data['amount'] = this.amount;
    data['textColor'] = this.textColor;
    return data;
  }
}
