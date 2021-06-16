import 'package:flutter/material.dart';

class TrackOrderModal {
  IconData icon;
  String title;
  String subtitle;
  String time;

  TrackOrderModal({this.icon, this.title, this.subtitle, this.time});

  TrackOrderModal.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    subtitle = json['subtitle'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['time'] = this.time;
    return data;
  }
}
